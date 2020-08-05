FROM adoptopenjdk:latest

ADD https://launcher.mojang.com/v1/objects/a412fd69db1f81db3f511c1463fd304675244077/server.jar server.jar
RUN echo "eula=true" > eula.txt

EXPOSE 25565

ENTRYPOINT java -Xmx768M -Xms768M -Dwhite-list=true -Ddifficulty=peaceful -Dmotd="Wanke Charles World" -Dspawn-monsters=false -Dsnooper-enabled=false -Denforce-whitelist=true -Dpvp=false -Dmax-players=10 -Deula=true -jar server.jar nogui 
