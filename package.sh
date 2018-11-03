#!/bin/bash

cd /root/helmrepo
git clone https://github.com/depauna/helm_charts_config.git || cd /opt/helmrepo/helm_charts_config && git pull
cd /root/helmrepo/helm_charts_config/charts
for chart in $(ls); do
  helm package $chart
  mv $chart-*.tgz /root/helmrepo/charts
done
cd /root/helmrepo
helm repo index charts --url https://raw.githubusercontent.com/depauna/charts/master/
cd /root/helmrepo/charts
git add .
git commit -m "Update charts"
git push origin master 

