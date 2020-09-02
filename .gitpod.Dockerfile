FROM gitpod/workspace-full

USER root
# Install deltarpm as it can speed up the upgrade processes, and tar as it's needed for installing Maven
RUN apt-get update 
RUN apt-get install -y  tar rsync

# Install .NET Core, mono & PowerShell
ENV DOTNET_CLI_TELEMETRY_OPTOUT=true                                                                                    \
    DOTNET_RUNNING_IN_CONTAINER=true                                                                                    \
    DOTNET_USE_POLLING_FILE_WATCHER=true                                                                                \
    NUGET_XMLDOC_MODE=skip

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb

RUN apt-get install -y apt-transport-https && \
    apt-get update && \
    apt-get install -y dotnet-sdk-3.1 && \
    apt-get install -y aspnetcore-runtime-3.1

ENV M2_HOME=/usr/local/apache-maven                                                                                     \
    M2=/usr/local/apache-maven/bin                                                                                      \
    MAVEN_OPTS="-Xms256m -Xmx512m"

RUN apt-get install -y openjdk-8-jdk

    
