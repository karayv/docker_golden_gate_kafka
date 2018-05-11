#FROM wurstmeister/kafka
#FROM ches/kafka
#FROM sheepkiller/kafka-manager
FROM orakafka

# Copy the setup scripts
COPY scripts/* /kafka/kogg/scripts/

# Golden gate installation zip should be placed under 'gg-bd-dist/' folder
COPY gg-bd-dist/*.tar /kafka
RUN tar -xvf /kafka/*.tar --directory /kafka/kogg

# Run KOGG conf setup
RUN /kafka/kogg/scripts/01_create_subdirs.sh
COPY dirprm/* /kafka/kogg/dirprm/

CMD /kafka/kogg/scripts/02_start_jobs.sh
