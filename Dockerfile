# Python 3.9 tabanlı bir Docker imajı kullanacağımızı belirttik.
FROM python:3.9

# Konteynır başlatıldığında, uygulama dosyalarının bulunduğu dizin olarak "/app" kullanılacaktır.
WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]

