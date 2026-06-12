#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail

readonly REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "${REPO_ROOT}/build" "${REPO_ROOT}/data"

cat > "${REPO_ROOT}/build/operator-os-local-start.sh" <<EOF
#!/usr/bin/env bash
set -o errexit -o nounset -o pipefail
echo "Operator OS local bootstrap"
EOF

chmod +x "${REPO_ROOT}/build/operator-os-local-start.sh"
