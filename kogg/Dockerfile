FROM orakafka

# Copy the setup scripts
COPY scripts/* /root/scripts/

# Copy the KOGG param files
COPY dirprm/* /root/dirprm/

# Golden gate installation zip should be placed under 'kogg/dist/' folder
COPY dist/OGG_BigData_Linux_x64_*.zip /kogg/

# Install KOGG
RUN /root/scripts/01_install_kogg.sh

# Start jobs on the container run
CMD /root/scripts/02_run.sh