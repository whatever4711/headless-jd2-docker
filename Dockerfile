FROM whatever4711/rpi-java
MAINTAINER Marcel Grossmann <whatever4711@gmail.com>

# Create directory, downloader JD" and start JD2 for the initial update and creation of config files.
RUN \
	mkdir /opt/JDownloader/ && \
	wget -O /opt/JDownloader/JDownloader.jar http://installer.jdownloader.org/JDownloader.jar && \
	java -Djava.awt.headless=true -jar /opt/JDownloader/JDownloader.jar

#COPY startJD2.sh /opt/JDownloader/
#RUN chmod +x /opt/JDownloader/startJD2.sh

# Run this when the container is started
ENTRYPOINT [ "java" ] 
CMD [ "-Djava.awt.headless=true", "-jar", "/opt/JDownloader/JDownloader.jar" ] 
