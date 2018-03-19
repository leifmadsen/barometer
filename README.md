# barometer

    git add remote upstream https://gerrit.opnfv.org/gerrit/barometer
    git pull --rebase upstream master
    git push --force origin master

# instructions

> NOTE we assume you've configured Docker to run as non-root. If not, then
> you'll need to build as root (not recommended).

    cd barometer/docker/barometer-collectd
    docker build --no-cache --tag nfvpe/barometer-collectd:latest .

## To Deploy Barometer container

    docker run -tid --net=host --pid=host \
        -v `pwd`/collect_config:/opt/collectd/etc/collectd.conf.d  \
        -v /var/run:/var/run \
        -v /tmp:/tmp \
        --privileged nfvpe/barometer-collectd
