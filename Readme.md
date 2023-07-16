### 1. Adım: Kodu Git Deposuna Yükleme

İlk olarak, örnek uygulama kodunu indirerek oluşturduğum Git depoma yükledim. Github kullandım.

### 2. Adım: Dockerfile Oluşturma

Dockerfile'ı oluşturmak için aşağıdaki adımları takip ettim:

Yeni bir metin dosyası oluşturdum ve <span style="color:red">Dockerfile</span> adını verdim.
Dockerfile'a aşağıdaki metni ekledim:
>FROM python:3.9
>
>WORKDIR /app
>
>COPY . .
>
>RUN pip install -r requirements.txt
>
>CMD ["python3", "app.py"]

Dockerfile'ı kaydettim.

### 3. Adım: Docker Image Oluşturma ve Docker Image Registry'de Saklama

Docker image'ını oluşturmak için aşağıdaki adımları takip ettim:

Terminal'de cd komutunu kullanarak Dockerfile'ın bulunduğu dizine gittim.
<span style="color:forestgreen">**"docker build -t bc4m ."**</span> komutunu çalıştırdım.
docker images komutunu çalıştırdım ve bc4m image'ının oluşturulduğunu doğruladım.
docker push bc4m komutunu çalıştırdım ve bc4m image'ını Docker Hub'a yükledim.

###  4. Adım: Docker Container Çalıştırmak

Docker container'ı çalıştırmak için aşağıdaki adımları takip ettim:

Terminal'de <span style="color:forestgreen">**"docker run -p 5000:5000 bc4m"** </span> komutunu çalıştırdım.
Web tarayıcımı açıp <span style="color:forestgreen">**"localhost:5000"**</span> adresine gittim.
Örnek uygulamanın çıktısını gördüm:
>{"msg":"BC4M"}


### <span style="color:darkgoldenrod">RUN vs CMD komutu nedir? Ne işe yarar?</span>

CMD verilen bir komutu container ayağa kalktıktan sonra çalıştırmak için kullanılır. RUN ise image içinde komut çalıştırmak için kullanılır.

O yüzden image içinde yükleme yaparken yani program install ederken RUN komutunu kullanırız yükledikten sonra o process'i çalıştırmak içinse CMD yi kullanırız.


### <span style="color:darkgoldenrod">Docker nedir? Ne için kullanılır?</span>

Docker, yazılım uygulamalarını hızlı ve taşınabilir bir şekilde paketlemek, dağıtmak ve çalıştırmak için kullanılan açık kaynaklı bir konteynerizasyon platformudur. Docker, uygulamaları bir çeşit konteyner olarak adlandırılan izole edilmiş ortamlarda çalıştırmanızı sağlar. Her konteyner, çalıştığı sistemden bağımsız olarak, gereksinimleriyle birlikte tüm uygulama ve bileşenlerini içerir.

Docker içindeki bazı komutların anlamları şu şekildedir:

<span style="color:#87CEEB">**'docker run'** :</span> Docker imajından yeni bir konteynır başlatır.<br>
<span style="color:#87CEEB">**'docker build'**:</span> Dockerfile kullanarak Docker imajı oluşturur.<br>
<span style="color:#87CEEB">**'docker pull'**:</span> Docker imajını uzaktan indirir.<br>
<span style="color:#87CEEB">**'docker push'**:</span> Docker imajını uzaktaki bir imaj deposuna yükler.<br>
<span style="color:#87CEEB">**'docker stop'**:</span> Çalışan bir konteynırı durdurur.<br>
<span style="color:#87CEEB">**'docker exec'**:</span> Çalışan bir konteynır içinde komut çalıştırır.<br>
<span style="color:#87CEEB">**'docker rm'**:</span> Durmuş olan bir konteynırı siler.<br>
<span style="color:#87CEEB">**'docker images'**:</span> Docker imajlarını listeler.<br>
<span style="color:#87CEEB">**'docker ps'**:</span> Çalışan konteynırları listeler.<br>
