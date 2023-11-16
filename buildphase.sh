#!/bin/bash
cat <<EOF >DockerFile
/home/alaa/CI-CD-Pipline
RUN pip install --no-cahce-dir -r requirements.txt
CMD["python","app.py","task2.py"]
EOF
echo "Creating app.py..."
cat <<EOF > app.py
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Flask in Docker!"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)
EOF
echo "Flask==2.0.1" > requirements.txt
echo "Building Docker image..."
docker build -t flask-app:latest .
./deploy-phase


