# Build image
#FROM microsoft/dotnet:2.0.3-sdk AS builder
#FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
FROM microsoft/dotnet-framework:4.7.2-sdk AS builder

WORKDIR /home/app

#COPY ./*.sln ./
#COPY ./*/*.csproj ./
##RUN for file in $(ls *.csproj); do mkdir -p ./${file%.*}/ && mv $file ./${file%.*}/; done
#RUN for file in $(ls *.csproj); do mkdir -p AssertExamples/${file%.*}/ && mv $file AssertExamples/${file%.*}/; done;

COPY . .

RUN dotnet restore

COPY . .

RUN dotnet publish ./AssertExamples/AssertExamples.csproj -o /publish/
 
#WORKDIR /publish
#ENTRYPOINT ["dotnet", "AssertExamples.dll"]
