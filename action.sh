#!/system/bin/sh

MODDIR="$(dirname "$0")"  # /data/adb/modules/<module-id>

echo -e "\nStarting copy for $(basename "$MODDIR")"

# create folder if necessary to store the data
mkdir -p /storage/emulated/0/ViewOnce
# copy data to said folder in the internal storage
cp -r /data/data/com.whatsapp/files/ViewOnce/* /storage/emulated/0/ViewOnce/

echo -e "\nCopy completed!"

exit 0
