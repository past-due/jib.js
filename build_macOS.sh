#!/bin/bash
echo "Building ..."
gcc -O2 -DWITH_NVS -DTLS_AMALGAMATION src/jib.c src/builtins.c src/builtins_io.c src/builtins_socket.c src/builtins_crypto.c src/builtins_nvs.c src/misc/tlse.c src/misc/http_parser.c src/duktape/duktape.c src/ui/macOS/htmlwindow.c src/ui/macOS/resource.m -framework Cocoa -framework WebKit -framework PCSC -o jib
echo "done"
