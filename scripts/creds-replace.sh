lead='^.*\/\/adminAuth: {'
tail='^.*\/\*\* The following property can be used to enable HTTPS'
sed -e "/$lead/,/$tail/{ /$lead/{p; r creds-replace.js
}; /$tail/p; d }" -i settings.js
