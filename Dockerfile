FROM azul/zulu-openjdk:25
EXPOSE 8761

ARG DEPENDENCY=build
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app

ENTRYPOINT ["java","-cp","app:app/lib/*","panomete.playground.serdis.SerdisApplication"]