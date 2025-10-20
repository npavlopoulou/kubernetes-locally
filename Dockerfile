# Dockerfile
FROM python:3.10-slim

WORKDIR /app

# Install system dependencies and update certificates
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && update-ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Configure pip globally for trusted hosts (more maintainable)
RUN pip config set global.trusted-host "pypi.org pypi.python.org files.pythonhosted.org"

# Install and upgrade pip
RUN pip install --upgrade pip

# Copy and install Python requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]