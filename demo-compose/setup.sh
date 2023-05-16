#; Prior to running the docker-compose, ensure the instances have
#; read-write permissions to the bindmounts.
echo "chmoding folders"
chmod -R 755 iris
chmod -R 755 webgateway

echo "starting docker image build"
docker-compose build
echo "docker images built"
echo "starting docker compose"
docker-compose up -d
echo "all done"

