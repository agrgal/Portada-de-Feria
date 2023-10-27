#!/bin/bash
#!/bin/bash
# Script para extraer páginas de un PDF como imágenes PNG

# Verificar si se proporciona un argumento
if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo.pdf>"
    exit 1
fi

# Nombre del archivo PDF
input_pdf="$1"

# Directorio de salida para las imágenes PNG
output_dir="output_images"

# Verificar si el directorio de salida no existe y crearlo si es necesario
if [ ! -d "$output_dir" ]; then
    mkdir "$output_dir"
fi

# Utilizar pdftoppm para convertir el PDF en imágenes PNG
pdftoppm -png "$input_pdf" "$output_dir/page"

echo "Imágenes extraídas en el directorio $output_dir/"

