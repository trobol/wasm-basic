@echo off
bash -c "clang --include-directory include --target=wasm32 -O3 -flto -nostdlib -Wl,--no-gc-sections -Wl,--no-entry -Wl,--export-all -Wl,--lto-O3  -o %~n1.wasm %1 "
::uncomment to export readable wast
 ::wasm2wat "%~n1.wasm" -o "%~n1.wast"

echo Compiled %1 -> %~n1.wasm