# docker-osv-scanner

Docker image for [osv-scanner](https://github.com/google/osv-scanner)

## Build

```
docker build -t adioss/osv-scanner .
```

## Usage

### Basics

```
// help
docker run --rm adioss/osv-scanner --help

// scan folder
docker run --rm -v ${PWD}:/mnt adioss/osv-scanner scan /mnt
// output as json
docker run --rm -v ${PWD}:/mnt adioss/osv-scanner scan /mnt --json
 
// scan sbom
docker run --rm -v ${PWD}:/mnt adioss/osv-scanner --sbom /mnt/sbom.cdx.json 
 
// license summury
docker run --rm -v ${PWD}:/mnt adioss/osv-scanner --experimental-licenses-summary /mnt
 
// scan docker image
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock adioss/osv-scanner scan --docker ubuntu:latest
```