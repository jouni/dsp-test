FROM maven:3-openjdk-18
RUN apt-get update -qq && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -qq --no-install-recommends nodejs

EXPOSE 8080
EXPOSE 8000

COPY . .

ENTRYPOINT []
CMD ["npm dspublisher:build"]
