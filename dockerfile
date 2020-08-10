from alpine
copy manifest.txt /
run cat /manifest.txt
entrypoint ["/bin/bash", "-c", "cat", "./manifest.txt"]
