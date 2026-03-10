\# .NET 10 Web API - Docker \& GitHub Actions CI/CD



Bu proje, GitHub Actions kullanılarak Ubuntu sunucusuna otomatik deploy edilen, Dockerize edilmiş bir .NET 10 Web API uygulamasıdır.



\## 🚀 Kullanılan Teknolojiler

\* .NET 10 (Web API)

\* Docker \& Docker Compose

\* Nginx (Reverse Proxy)

\* GitHub Actions (CI/CD)



\## 🛠️ Yerel Çalıştırma

1\. Projeyi clone'layın.

2\. `.env.example` dosyasını `.env` olarak kopyalayın ve değerleri doldurun.

3\. `dotnet run --project src/SimpleApi` komutuyla başlatın.



\## 🐳 Docker ile Çalıştırma

```bash

docker compose up -d --build

