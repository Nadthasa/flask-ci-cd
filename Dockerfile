FROM python:3.10-slim

WORKDIR /app

COPY . .

# Install gunicorn dan semua dependensi
RUN pip install --no-cache-dir gunicorn && pip install --no-cache-dir -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
