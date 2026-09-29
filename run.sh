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


# ==============================
# PUTARAN 1 — 11 DETIK
# ==============================

echo "======================================"
echo " PUTARAN 1 — 11 DETIK"
echo "======================================"

for PACKAGE in "${PACKAGES[@]}"; do

    echo ""
    echo "[>] Menjalankan: $PACKAGE"

    am start -n "$PACKAGE/$ACTIVITY"

    sleep 11

    input keyevent 3

    sleep 3

done


# ==============================
# PUTARAN 2 — 8 DETIK
# ==============================

echo ""
echo "======================================"
echo " PUTARAN 2 — 8 DETIK"
echo "======================================"

for PACKAGE in "${PACKAGES[@]}"; do

    echo ""
    echo "[>] Menjalankan: $PACKAGE"

    am start -n "$PACKAGE/$ACTIVITY"

    sleep 8

    input keyevent 3

    sleep 3

done


echo ""
echo "======================================"
echo " SELESAI"
echo "======================================"