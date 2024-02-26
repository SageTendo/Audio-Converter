# building the container
podman build -t audio-converter .

# running the container
podman run -p 5000:5000 audio-converter
