# Gunakan Python versi 3.10 yang ringan
FROM python:3.10-slim

# Set folder kerja di dalam container
WORKDIR /app

# Salin semua file dari project ke dalam container
COPY . .

# Install semua dependencies dari requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan aplikasi pakai gunicorn
CMD ["gunicorn", "app:app"]
