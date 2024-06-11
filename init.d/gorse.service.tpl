[Unit]
Description=Gorse, an open source recommender system service written in Go.
After=network.target

[Service]
Type=simple
Restart=always
ExecStart={$SERVER_PATH}/gorse/bin/gorse-in-one -c {$SERVER_PATH}/gorse/config.toml \
    --log-path {$SERVER_PATH}/gorse/gorse.log \
    --cache-path {$SERVER_PATH}/gorse/data

[Install]
WantedBy=multi-user.target