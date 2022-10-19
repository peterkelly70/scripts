for f in $(cat missingfiles.txt)
do
mysql --user="$user" --password="$password" "$database" --execute "select id,filename,contenthash from mdl_files where contenthash like '%${var}%'";
done
