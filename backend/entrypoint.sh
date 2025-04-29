set -e
host="db"
port="8000"
cmd="$@"

until curl http://"$host":"$port"; do
  sleep 1
done
exec $cmd
