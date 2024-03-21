# Utilizamos la versión oficial de Typesense como base
FROM typesense/typesense:0.25.2 AS base

# Aquí puedes incluir pasos adicionales de configuración, como instalar dependencias,
# copiar archivos de configuración, scripts, etc.

# Por ejemplo, copiar un script personalizado (asegúrate de tener un archivo script.sh en tu contexto de construcción)
# COPY script.sh /usr/local/bin/script.sh
# RUN chmod +x /usr/local/bin/script.sh

# Configuración predeterminada (reemplaza TuClaveAPI con tu clave API real)
CMD ["--data-dir", "/data", "--api-key", "bernalux"]

# Expone el puerto 8108
EXPOSE 8108

# Opcionalmente, puedes especificar un volumen para la persistencia de datos
VOLUME ["/data"]
