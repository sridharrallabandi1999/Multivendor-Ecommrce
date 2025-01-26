# Base image with Python and GDAL pre-installed
FROM osgeo/gdal:ubuntu-full-3.9.2

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-dev \
    && apt-get clean

# Set the working directory in the container
WORKDIR /app

# Copy project files
COPY . /app/

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port your app runs on
EXPOSE 8000

# Run the application (change this based on your project)
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
