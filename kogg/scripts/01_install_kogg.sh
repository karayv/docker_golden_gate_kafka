echo "Unpacking KOGG..."
unzip /kogg/*.zip -d /kogg
tar -xvf /kogg/*.tar --directory /kogg

echo "Creating KOGG subdirs..."
/kogg/ggsci << EOF
    CREATE SUBDIRS
    EXIT
EOF
