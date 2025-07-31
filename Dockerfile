#official Python 3.11 image
FROM python:3.11-slim 

#env var
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

#set working directory
WORKDIR /app

#install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

#copy project files
COPY . .

#expose port
EXPOSE 5000

#run
CMD ["python", "app.py"]
