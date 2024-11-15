#!/bin/bash

chmod +x ./definisci.sh
chmod +x ./usa.sh
chmod +x ./elimina.sh

echo "Definisco VAR..."
source ./definisci.sh

./usa.sh

echo "Eliminando VAR..."
source ./elimina.sh

./usa.sh
