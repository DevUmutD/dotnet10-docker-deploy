# Build aşaması
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

# Proje dosyasını kopyala ve restore et
COPY ["src/SimpleApi/SimpleApi.csproj", "SimpleApi/"]
RUN dotnet restore "SimpleApi/SimpleApi.csproj"

# Tüm kodları kopyala ve publish al
COPY src/SimpleApi/. SimpleApi/
WORKDIR "/src/SimpleApi"
RUN dotnet publish "SimpleApi.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Çalıştırma aşaması
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .

# Uygulamayı ayağa kaldır
ENTRYPOINT ["dotnet", "SimpleApi.dll"]