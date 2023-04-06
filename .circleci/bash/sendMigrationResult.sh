
if grep -E -i "(has been executed successfully.|No migrations are pending)" ~/project/backend/migrations_dump.txt
then
     # If you are using kvdb.io, generate the bucket ID "9GE4jRtKznmVKRfvdBABBe" in your local terminal first
    curl https://kvdb.io/UR8ueHqqqDZZjy8sb2uHYm/migration_${CIRCLE_WORKFLOW_ID:0:7}  -d '1'
    echo "SUCCESS and send to 1"
else 
    curl https://kvdb.io/UR8ueHqqqDZZjy8sb2uHYm/migration_${CIRCLE_WORKFLOW_ID:0:7}  -d '0'
    echo "SUCCESS and send to 0"
fi
