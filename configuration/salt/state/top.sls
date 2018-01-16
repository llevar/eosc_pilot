base:
  '*':
    - selinux
    - dnsmasq
    - elastic.filebeat
    - elastic.packetbeat
    - ntp
    - telegraf
  'G@roles:consul-ui':
    - consul.ui
  'G@roles:monitoring-server':
    - influxdb
    - grafana
    - kapacitor
    - chronograf
    - salt.api
    - salt.pepper
    - terraform
    - butler.healing-agent
    - eosc-pilot
    - eosc-pilot.terraform
    - terraform.consul-backend
  'G@roles:worker':
    - git
    - celery
    - airflow
    - airflow.load-workflows
    - airflow.worker
    - butler.tracker
    - butler.deploy.example-workflows
    - cwltool
    - docker
  'G@roles:worker and G@roles:comp-can':  
    - nfs-shares.comp_can
  'G@roles:worker and G@roles:cyfronet':  
    - ceph
    - ceph.mount-cyfronet
    - onedata
  'G@roles:worker and G@roles:ebi':  
    - dnsmasq.1kgp-share
    - dnsmasq.ebi-proxy
    - dnsmasq.gnos-share
    - dnsmasq.pan-prostate-share
    - nfs-shares
  G@roles:tracker':
    - git
    - run-tracking-db.set_db_url
    - celery
    - airflow
    - airflow.init-db
    - airflow.patch-airflow-url-prefix
    - airflow.load-workflows
    - airflow.server
    - jsonmerge
    - butler.tracker
    - butler.deploy.example-workflows
    - hostfile    
  'G@roles:tracker and G@roles:ebi':  
    - dnsmasq.1kgp-share
    - dnsmasq.ebi-proxy
    - dnsmasq.gnos-share
    - dnsmasq.pan-prostate-share
    - nfs-shares
  'G@roles:tracker and G@roles:comp-can':  
    - nfs-shares.comp_can
  'G@roles:tracker and G@roles:cyfronet':  
    - ceph
    - ceph.mount-cyfronet
    - onedata   
  'G@roles:db-server':
    - postgres
    - run-tracking-db
    - run-tracking-db.create_tables
    - grafana.createdb
    - airflow.airflow-db
  'G@roles:job-queue':
    - rabbitmq
  'G@roles:elasticsearch':
    - elastic.search
    - elastic.logstash
    - elastic.kibana
    - celery
  'G@roles:R':
    - R
  'G@roles:butler-web':
    - git
    - nginx
    - butler.web
  'G@roles:salt-master':
    - salt.api


  
    
  
    
    


    
