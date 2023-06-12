if [[ -n "$1" && "$1" == "--silent" ]]; then
    cargo run --bin quiche-server -- --cert /home/test/repos/quiche/apps/src/bin/cert.crt --key /home/test/repos/quiche/apps/src/bin/cert.key --listen 0.0.0.0:4433 --root /home/test/repos/quiche/apps/src/bin/root --disable-hystart --no-grease --dgram-proto none --dgram-count 0 &>/dev/null
else
    RUST_LOG=trace cargo run --bin quiche-server -- --cert /home/test/repos/quiche/apps/src/bin/cert.crt --key /home/test/repos/quiche/apps/src/bin/cert.key --listen 0.0.0.0:4433 --root /home/test/repos/quiche/apps/src/bin/root --disable-hystart --no-grease --dgram-proto none --dgram-count 0
fi
