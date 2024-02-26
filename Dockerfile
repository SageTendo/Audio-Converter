# Python version we will use
FROM python:3.10

WORKDIR audio-converter
COPY . /audio-converter

# Dependency installation
RUN pip install --no-cache-dir -r requirements.txt
# RUN apt-get clean
RUN apt-get update && apt-get install -y ffmpeg libavcodec-extra

# The port to run the application on. (If in use, change it to an open port)
# Examples: 3000, 3500, 5500
EXPOSE 5000

# Running the application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
