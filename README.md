# BOSH release for wireguard

This BOSH release and deployment manifest deploy a cluster of wireguard.

## Usage

This repository includes base manifests and operator files. They can be used for initial deployments and subsequently used for updating your deployments:

```plain
export BOSH_ENVIRONMENT=<bosh-alias>
export BOSH_DEPLOYMENT=wireguard
git clone https://github.com/cloudfoundry-community/wireguard-boshrelease.git
bosh deploy wireguard-boshrelease/manifests/wireguard.yml
```

If your BOSH does not have Credhub/Config Server, then remember `--vars-store` to allow generation of passwords and certificates.

### Update

When new versions of `wireguard-boshrelease` are released the `manifests/wireguard.yml` file will be updated. This means you can easily `git pull` and `bosh deploy` to upgrade.

```plain
export BOSH_ENVIRONMENT=<bosh-alias>
export BOSH_DEPLOYMENT=wireguard
cd wireguard-boshrelease
git pull
cd -
bosh deploy wireguard-boshrelease/manifests/wireguard.yml
```
