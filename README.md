# .NET 10 Web API - DevOps Bitirme Projesi (Umut Duran)

Bu proje; Dockerize edilmiş, Nginx Reverse Proxy arkasında çalışan ve GitHub Actions (CI/CD) aracılığıyla otomatik olarak Ubuntu sunucusuna deploy edilen bir .NET 10 Web API uygulamasıdır.

## 📝 Proje Açıklaması
Uygulama, sistem sağlığını kontrol eden (`/health`) ve öğrenci bilgilerini JSON formatında dönen (`/api/info`) iki temel endpoint sunmaktadır. Projenin ana odağı, kodun GitHub'a gönderildiği andan itibaren sunucuda canlıya alınana kadar geçen tüm sürecin otomatize edilmesidir.

## 🛠️ Kullanılan Teknolojiler
* **Backend:** .NET 10 Web API
* **Containerization:** Docker & Docker Compose
* **Reverse Proxy:** Nginx
* **CI/CD:** GitHub Actions
* **Operating System:** Ubuntu 22.04 (VPS)

## 🌐 Canlı Sunucu (VPS) Erişimi
Uygulama şu an aşağıdaki adresler üzerinden **canlı olarak** test edilebilir:
* **API Bilgi:** [http://209.250.233.73:11019/api/info](http://209.250.233.73:11019/api/info)
* **Health Check:** [http://209.250.233.73:11019/health](http://209.250.233.73:11019/health)

## 💻 Local Çalıştırma Adımları
Projeyi kendi bilgisayarınızda (localhost) çalıştırmak için:
1.  Repoyu klonlayın: `git clone <repo-url>`
2.  `STUDENT_NAME` ortam değişkenini tanımlayın.
3.  Uygulamayı başlatın:
    ```bash
    dotnet restore
    dotnet run --project src/SimpleApi
    ```
4.  Tarayıcıdan `http://localhost:5000/api/info` adresine gidin.

## 🐳 Docker ile Çalıştırma Adımları
Uygulamayı tek başına Docker üzerinde ayağa kaldırmak için:
```bash
docker build -t bitirmep-api .
docker run -p 8080:8080 --env STUDENT_NAME="Umut Duran" bitirmep-api