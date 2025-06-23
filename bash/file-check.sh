#!/bin/bash

if [[ -f file-3check.sh ]];then
   echo "file exists" 
else   echo "file does not exists" 

fi

    - job_name: application-log
        static_configs:
        - labels:
            job: varlog
            host: prod-api-1
            service: snapmint-api
            __path__: /ebs/apps/api/current/log/production.log
      - job_name: var-log
        static_configs:
          - labels:
              job: varlog
              host: autoqa
              __path__: /var/log/*.log
