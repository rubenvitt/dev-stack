if [ $# -ne 2 ]; then
    echo "Usage: $0 <certificate file> <certificate name>"
    exit 1
fi
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

openssl x509 -in "$1" -trustout -out "proxy/certs/$2"
echo "Don't forget the private key"