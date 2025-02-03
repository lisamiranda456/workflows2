# Use a base image (Python in this case)
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy all files from your repo to the container
COPY . .

# Install dependencies if you have any
RUN pip install --no-cache-dir -r requirements.txt || true

# Set the default command
CMD ["python", "-m", "http.server", "8080"]
