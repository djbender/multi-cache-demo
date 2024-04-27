FROM ubuntu:noble

RUN <<EOT
#!/usr/bin/env bash
set -exu
apt-get update
apt-get install --yes --no-install-recommends \
  build-essential \
  ca-certificates \
  curl
update-ca-certificates
EOT

CMD ["bash"]
