MIGRATION_STATUS=$(curl -i https://kvdb.io/UR8ueHqqqDZZjy8sb2uHYm/migration_${CIRCLE_WORKFLOW_ID:0:7} | tail -n 1)

if [[ "$MIGRATION_STATUS" = "1" ]]
then
    echo "Migration pass no need to be reverted"
else 
    npm run migrations:revert
fi