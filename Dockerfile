FROM confluentinc/cp-kafka:4.0.0
RUN apt update; apt install -y gettext
ENV WHITELIST=.*
COPY . /
CMD /start.sh
