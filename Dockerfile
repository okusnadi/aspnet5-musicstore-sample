FROM muffycompo/aspnet5-sti

MAINTAINER Mfawa Alfred Onen <muffycompoqm@gmail.com>

COPY project.json /app/

WORKDIR /app/

RUN ["dnu", "restore"]

COPY . /app/

USER root

EXPOSE 5004

ENTRYPOINT ["dnx", "kestrel"]
