# Build image
#FROM microsoft/dotnet:2.0.3-sdk AS builder
#FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
FROM microsoft/dotnet-framework:4.7.2-sdk AS builder

WORKDIR /home/app

