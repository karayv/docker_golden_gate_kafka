#FROM wurstmeister/kafka
FROM ches/kafka

RUN export LD_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64/server/:$LD_LIBRARY_PATH

# Copy the setup scripts
COPY --chown=kafka:kafka scripts/* ./kogg/scripts/

# Golden gate installation zip should be placed under 'gg-bd-dist/' folder
COPY --chown=kafka:kafka gg-bd-dist/*.tar .
RUN tar -xvf *.tar --directory ./kogg

# Run KOGG conf setup
RUN ./kogg/scripts/01_create_subdirs.sh
COPY dirprm/* ./kogg/dirprm/

CMD ./kogg/scripts/02_start_jobs.sh
