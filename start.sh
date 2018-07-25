envsubst < /consumer.config.tmpl > ~/consumer.config
envsubst < /producer.config.tmpl > ~/producer.config
kafka-run-class kafka.tools.MirrorMaker --consumer.config ~/consumer.config --num.streams 2 --producer.config ~/producer.config --whitelist="$WHITELIST"
