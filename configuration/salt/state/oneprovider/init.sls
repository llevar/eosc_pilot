install_oneclient:
  cmd.script:
    - source: salt://onedata/config/oneclient.sh
    
/oneclient:
  file.directory:    
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644
    - makedirs: True 
    
run_oneclient:
  cmd.run:
    - name: oneclient -i -H pancancer-eosc-cyf.tk -t $ACCESS_TOKEN /oneclient 