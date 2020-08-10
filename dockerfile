from alpine
copy manifest.txt /
run cat /manifest.txt
entrypoint ["cat", "./manifest.txt"]
