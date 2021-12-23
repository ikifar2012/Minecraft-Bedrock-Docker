FROM ubuntu:20.04
ARG MC_VER="1.18.2.03"
################ Prepare System ######################
RUN apt-get update
RUN apt-get install -y unzip curl libcurl4 libssl1.0.0 wget
RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-${MC_VER}.zip
RUN unzip bedrock-server-${MC_VER}.zip
#######################################################
WORKDIR /bedrock
EXPOSE 19132:19132/tcp
ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server