#!/data/data/com.termux/files/usr/bin/bash

ACTIVITY="com.moba.unityplugin.MobaGameMainActivityWithExtractor"

PACKAGES=(
    "com.mlbb.tes0"
    "com.mlbb.tes1"
    "com.mlbb.tes2"
    "com.mlbb.tes3"
    "com.mlbb.tes4"
    "com.mlbb.tes5"
    "com.mlbb.tes6"
)

run_round() {
    local DELAY="$1"

    echo "================================"
    echo "PUTARAN ${DELAY} DETIK"
    echo "================================"

    for PACKAGE in "${PACKAGES[@]}"; do

        echo "[>] Menjalankan $PACKAGE"

        if pm path "$PACKAGE" >/dev/null 2>&1; then

            am start -n "$PACKAGE/$ACTIVITY"

            sleep "$DELAY"

            input keyevent 3

            sleep 3

        else
            echo "[!] $PACKAGE tidak ditemukan"
        fi

    done
}

# PUTARAN 1
run_round 11

# PUTARAN 2
run_round 8

echo ""
echo "================================"
echo "SELESAI"
echo "================================"