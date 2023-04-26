#! /usr/bin/bash

sudo systemctl start docker.service
cd $DELFOSTI/PHI/Workspace/phi-fondosmutuos-api &&
code . &&
gnome-terminal -- npm run start:dev