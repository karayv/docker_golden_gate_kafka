# Oracle image is a prerequisite (needs to be built first)
FROM oracle/database:12.1.0.2-ee

USER oracle:oinstall

# Golden gate installation zip should be placed under 'ogg/dist/' folder
COPY --chown=oracle:oinstall dist/123*_fbo_ggs_Linux_x64_shiphome.zip /ogg-dist/

# Copy the GG install scripts
COPY --chown=oracle:oinstall scripts/build/* /ogg-dist/

# Copy the Oracle DB setup scripts
COPY --chown=oracle:oinstall scripts/setup/* /opt/oracle/scripts/setup/

# Copy GG parameter files
COPY --chown=oracle:oinstall dirprm/* /ogg-dist/dirprm/

RUN sh /ogg-dist/00_install_ogg.sh