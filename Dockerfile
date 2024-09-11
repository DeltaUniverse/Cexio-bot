# Use a minimal Python 3.10 image based on Alpine Linux
FROM python:3.11-alpine3.18

# Set the working directory for the application
WORKDIR /app

# Copy only the requirements file to leverage Docker cache for dependencies
COPY requirements.txt .

# Upgrade pip and install build tools and dependencies
RUN pip install --no-cache-dir --upgrade pip setuptools wheel \
    && pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Specify the command to run the application
CMD ["python", "main.py", "-a", "1"]
