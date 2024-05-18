project_path="$(dirname "$(readlink -f "$0")")"
config="config/config.env"
if [ -n "$1" ]; then
  config="$1"
fi
docker-compose --env-file "$1" up --build --detach
