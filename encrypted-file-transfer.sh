cat <file_name> | gpg -ac -o- | curl -X PUT -T "-" https://transfer.sh/<file_name>.gpg
curl https://transfer.sh/<hash>/<file_name>.gpg | gpg -o- > <file_name>
