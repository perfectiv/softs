#!/bin/bash

echo "=== Dang cai dat may in tren macOS ==="

# Cài máy in Ricoh_MP_5001_13
lpadmin -p Ricoh_MP_5001_13 -E -v lpd://192.168.88.13 -m "Generic PCL Printer" -o printer-is-shared=false

# Cài máy in Ricoh_MP_2852_12
lpadmin -p Ricoh_MP_2852_12 -E -v lpd://192.168.88.12 -m "Generic PCL Printer" -o printer-is-shared=false

# Cài máy in Ricoh_MP_3053_232
lpadmin -p Ricoh_MP_3053_232 -E -v lpd://192.168.88.232 -m "Generic PCL Printer" -o printer-is-shared=false

echo "=== Cai dat hoan tat ==="
