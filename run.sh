#!/data/data/com.termux/files/usr/bin/bash

ACTIVITY="com.moba.unityplugin.MobaGameMainActivityWithExtractor"

echo "======================================"
echo " MENCARI PACKAGE COM.AM"
echo "======================================"

mapfile -t PACKAGES < <(
    pm list packages |
    sed 's/^package://' |
    grep '^com\.am' |
    sort
)

if [ ${#PACKAGES[@]} -eq 0 ]; then
    echo ""
    echo "[!] Tidak ada package com.am ditemukan."
    echo ""
    echo "Package yang tersedia:"
    pm list packages | head -50
    exit 1
fi

echo ""
echo "Package ditemukan: ${#PACKAGES[@]}"
echo ""

for PACKAGE in "${PACKAGES[@]}"; do
    echo "  - $PACKAGE"
done

echo ""
echo "======================================"
echo " MULAI PUTARAN 1 — 11 DETIK"
echo "======================================"

for PACKAGE in "${PACKAGES[@]}"; do

    echo ""
    echo "[>] Menjalankan: $PACKAGE"

    if pm path "$PACKAGE" >/dev/null 2>&1; then

        am start -n "$PACKAGE/$ACTIVITY"

        sleep 11

        input keyevent 3

        sleep 3

    else
        echo "[!] Package tidak ditemukan: $PACKAGE"
    fi

done


echo ""
echo "======================================"
echo " MULAI PUTARAN 2 — 8 DETIK"
echo "======================================"

for PACKAGE in "${PACKAGES[@]}"; do

    echo ""
    echo "[>] Menjalankan: $PACKAGE"

    if pm path "$PACKAGE" >/dev/null 2>&1; then

        am start -n "$PACKAGE/$ACTIVITY"

        sleep 8

        input keyevent 3

        sleep 3

    else
        echo "[!] Package tidak ditemukan: $PACKAGE"
    fi

done


echo ""
echo "======================================"
echo " SELESAI"
echo "======================================"