FROM ubuntu:latest
################ Prepare System ######################
RUN apt-get update
RUN apt-get install -y unzip curl libcurl4 libssl1.0.0
#######################################################
WORKDIR /bedrock
ENV LD_LIBRARY_PATH=.
CMD ./bedrock_server