# Oracle image is a prerequisite (needs to be built first)
FROM oracle/database:12.1.0.2-ee

# Golden gate installation zip should be placed under 'gg-dist/' folder
COPY gg-dist/*.zip ./gg-dist/
RUN unzip ./gg-dist/*.zip
COPY gg-install-config.rsp .

# Copy the setup scripts
#COPY scripts/setup/*.* /opt/oracle/scripts/setup/
#COPY scripts/startup/* /opt/oracle/scripts/startup/

# Copy GG parameter files
COPY dirprm/* ./dirprm/