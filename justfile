bootstrap:
    @printf 'Instalando dependencias de R...\n\n'
    ./bin/bootstrap.sh

docs:
    @printf 'Generando documentación...\n\n'
    ./bin/gen_docs.sh