#FROM wurstmeister/kafka
FROM ches/kafka
#FROM sheepkiller/kafka-manager

# Copy the setup scripts
COPY --chown=kafka:kafka scripts/* ./kogg/scripts/

# Golden gate installation zip should be placed under 'gg-bd-dist/' folder
COPY --chown=kafka:kafka gg-bd-dist/*.tar .
RUN tar -xvf *.tar --directory ./kogg

# Run KOGG conf setup
RUN ./kogg/scripts/01_create_subdirs.sh
COPY --chown=kafka:kafka dirprm/* ./kogg/dirprm/

CMD ./kogg/scripts/02_start_jobs.sh
