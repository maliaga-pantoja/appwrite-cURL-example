#!/bin/sh
# Update document

PROJECT_ID=616079063f939
TOKEN=9cf9bb638ce71c599c084c0432bb6c8be5555b68b860fa097f4df0567e5442a0f9760c6ab32eb0ff5128fa3e4d1bb57b4df6534ba5c06c8224175d6a66575648f9731d0b335d1665e3723a67034d1dd08d81152b91e8b97adc1ac86f3cf3bd8187201b51415a6d0232523978807b1d36630bfe287ae0facb3827270593348839

APPWRITE_URL="http://localhost:8081"
COLLECTION_ID="616b34562a0a3"
DOCUMENT_ID="616b8e803fb0a"

ENDPOINT=v1/database/collections/$COLLECTION_ID/documents/$DOCUMENT_ID

SERVICE_URL="$APPWRITE_URL/$ENDPOINT"

curl -X PATCH \
-H "X-Appwrite-Project: ${PROJECT_ID}" \
-H "Content-type: application/json" \
-H "X-Appwrite-key: ${TOKEN}" \
-d "{ 
    \"data\": {
        \"name2\": \"new-key-content-2\"
    }      
}" \
$SERVICE_URL