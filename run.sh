#!/data/data/com.termux/files/usr/bin/bash

ACTIVITY="com.moba.unityplugin.MobaGameMainActivityWithExtractor"

PACKAGES=(
    "com.amc"
    "com.amd"
    "com.ame"
    "com.amf"
    "com.amg"
    "com.amh"
    "com.ami"
    "com.amj"
    "com.amk"
    "com.aml"
    "com.amm"
    "com.amn"
    "com.amo"
    "com.amp"
    "com.amq"
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