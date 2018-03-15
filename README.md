# barometer

git add remote upstream https://gerrit.opnfv.org/gerrit/barometer
git pull --rebase upstream master
git push --force origin master
#instruction
cd barometer/docker/barometer-collectd
$ sudo docker build --no-cache -t opnfv/barometer-collectd --build-arg http_proxy=`echo $http_proxy` \
  --build-arg https_proxy=`echo $https_proxy` -f Dockerfile .
```
##### To Deploy Barometer container
```
docker run -tid --net=host --pid=host -v `pwd`/collect_config:/opt/collectd/etc/collectd.conf.d  -v /var/run:/var/run -v /tmp:/tmp --privileged opnfv/barometer-collectd /run_collectd.sh
```
