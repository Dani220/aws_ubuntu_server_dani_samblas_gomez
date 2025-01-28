#!/bin/bash

# Función comprobarprivilegios
comprobarprivilegios() {
    # Comprueba si el usuario actual tiene privilegios de root
    if [ "$EUID" -eq 0 ]; then
        return 1  # Devuelve 1 si es root
    else
        return 0  # Devuelve 0 si no es root
    fi
}

# Ejecuta la función comprobarprivilegios
comprobarprivilegios
resultado=$?

# Toma decisiones en base al resultado
if [ "$resultado" -eq 0 ]; then
    echo "El script no se puede seguir ejecutando porque el usuario que lo ejecuta no tiene privilegios de root"
else
    echo "Continúa la ejecución"
fi
