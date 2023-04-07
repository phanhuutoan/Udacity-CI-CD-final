MIGRATION_STATUS=$(curl -i https://kvdb.io/UR8ueHqqqDZZjy8sb2uHYm/migration_${CIRCLE_WORKFLOW_ID:0:7} | tail -n 1)
FORCE_REVERT=$1 
WORKING_DIR=$HOME

if [[ $CI = true ]]; then 
    WORKING_DIR=$CIRCLE_WORKING_DIRECTORY
fi

if [[ "$MIGRATION_STATUS" = "0" || $FORCE_REVERT = true ]]
then
    cd backend
    pwd
    echo "Reverting migration..."
    npm run migrations:revert
else 
    echo "Migration pass no need to be reverted"
fi