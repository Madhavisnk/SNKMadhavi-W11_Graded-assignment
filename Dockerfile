# Use an official Python runtime as a parent image
FROM python:3.10-slim


# Install Flask and other dependencies
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /webapp
COPY . /webapp

# Expose the Flask port
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]