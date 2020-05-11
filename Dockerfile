FROM mcr.microsoft.com/dotnet/core/aspnet:2.1-stretch-slim AS base
WORKDIR /app
COPY /. /app
RUN dotnet restore
RUN dotnet publish -o /out -c Release
EXPOSE 5000
# ÷¥––dotnet DockerWebAPI.dll√¸¡Ó
CMD ["dotnet", "Redis_Core.dll"]