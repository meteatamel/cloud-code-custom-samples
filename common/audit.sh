#
# Admin tool for testing script propagation.
#

USAGE=$(cat <<EOF

$0 add|rm|diff

          add - add a test line to common script files
          rm - remove test line from common script files
          diff - verify common script files match propagated files in per app folder

          Typical usage scenario:
              1. admin_scripts add
              2. push modified files to github
              3. wait few minutes for github workflow to run
              4. git pull
              5. admin_scripts diff (to verify propagation)
              5. admin_scripts rm
              6. push to github (revert common scripts back to original state)
EOF
)
             
TEST_LINE="# THIS IS A TEST"

if [ "$#" != 1 ]
then
    echo "$USAGE"
    exit 1
fi

if [ "$1" == add ]
then
    for i in */*.sh
    do
        # make sure test line not already present
        if ! grep "$TEST_LINE" $i >/dev/null 2>&1
        then
            echo $TEST_LINE >>$i
        else
            echo test line already present in $i
        fi
    done
elif [ "$1" == "rm" ]
then
    for i in */*.sh
    do
        # make sure test line is present
        if grep "$TEST_LINE" $i >/dev/null 2>&1
        then
            OUT="$(mktemp)" 
            ghead -n -1 $i >$OUT
            cp $OUT $i
        else
            echo test line not present in $i
        fi
    done
elif [ "$1" == "diff" ]
then
    for language in java dotnet nodejs python
    do
        for service in functions run
        do
            for app in hello-http hello-gcs hello-auditlog hello-pubsub
            do
                for script in setup.sh deploy.sh test_local.sh test_cloud.sh
                do
                    if ! diff ../$language/$service/$app/scripts/$script $app/$script
                    then
                        echo "../$language/$service/$app/scripts/$script" does NOT match "$app/$script"
                        exit 1
                    fi
                done 
            done 
        done
    done 
    echo all files matched
else
    echo "$USAGE"
    exit 1
fi
