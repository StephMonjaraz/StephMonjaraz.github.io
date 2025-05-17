#!/bin/bash

# Script para inicializar repo git limpio con README y .gitignore

# Asumimos que ya estás dentro de la carpeta:
# /home/stephanie-blue/Ingenieria/JessiStudies/PROTECSA/StephMonjaraz.github.io

# Inicializar git
git init

# Crear README.md
echo "# StephMonjaraz.github.io

Repositorio para el desarrollo de mi página web básica utilizando HTML, CSS y GitHub Pages." > README.md

# Crear .gitignore básico
echo "# Archivos para ignorar
*.log
*.tmp
*.bak
.DS_Store
node_modules/" > .gitignore

# Añadir todos los archivos
git add .

# Primer commit
git commit -m "[STEPHANIE][ADD][MAIN] Inicialización del repositorio con README y .gitignore"

# Cambiar a rama main
git branch -M main

# Agregar remoto
git remote add origin https://github.com/StephMonjaraz/StephMonjaraz.github.io.git

# Push inicial
git push -u origin main

# Abrir VS Code en la carpeta actual
code .
