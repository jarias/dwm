#!/bin/bash

set -e

mkdir -p local-repo
aws sync --follow-symlinks --acl-public s3://arch.menari.io/repo/x86_64/ local-repo/
repo-add -s local-repo/menari.db.tar.gz *.pkg.tar.xz
aws sync --follow-symlinks --acl-public local-repo/ s3://arch.menari.io/repo/x86_64/
aws cp *.pkg.tar.gz s3://arch.menari.io/repo/x86_64/
aws cp *.pkg.tar.gz.sig s3://arch.menari.io/repo/x86_64/
