# Who is using a port ???
###  👋


## Using lsof
###  lsof -i -P -n | grep LISTEN | awk '{print $9 "\t" $1 "\t"}' | tr -d '*:'

| Port  |   command | 
|--|--|
| 111  |   systemd | 
| 111   |  systemd | 
| 9090  |  systemd | 
| 111   |  rpcbind | 
| 111   |  rpcbind | 
| 22    |  sshd | 
| 22   |   sshd | 
| 127.0.0.1199  |  snmpd | 
| 127.0.0.125   |  master | 
| [1]25  | master | 
| 16635 |  rpc.statd | 
| 49513  | rpc.statd  | 

## Using ss
### ss --listen --tcp --process  | awk '{print $4 "\t" $6 "\t" $7}'

| Local   Peer  |  Address:PortProcess |
|--|--|
| 0.0.0.0:7494  |   users:(("DataFlowEngine",pid=516476,fd=78)) | 
| 127.0.0.1:smux|   users:(("snmpd",pid=1554,fd=9)) | 
| 0.0.0.0:7496  |   users:(("DataFlowEngine",pid=516460,fd=78)) | 
| 127.0.0.1:11883|  users:(("bipMQTT",pid=516454,fd=4)) | 
| 0.0.0.0:sunrpc|   users:(("rpcbind",pid=1070,fd=4),("systemd",pid=1,fd=112)) | 
| 0.0.0.0:2896|     users:(("DataFlowEngine",pid=516460,fd=322)) | 
| 0.0.0.0:7090 |    users:(("DataFlowEngine",pid=516456,fd=391)) | 
| 0.0.0.0:2898 |    users:(("DataFlowEngine",pid=516460,fd=334)) | 
| 0.0.0.0:7092 |    users:(("DataFlowEngine",pid=516458,fd=469)) | 
| 0.0.0.0:2804 |    users:(("DataFlowEngine",pid=516456,fd=284)) | 
| 0.0.0.0:2900 |    users:(("DataFlowEngine",pid=516458,fd=275)) | 
| 0.0.0.0:7094 |    users:(("DataFlowEngine",pid=516476,fd=363)) |  
| 0.0.0.0:2902 |    users:(("DataFlowEngine",pid=516458,fd=318)) | 
| 0.0.0.0:2806 |    users:(("DataFlowEngine",pid=516456,fd=318)) | 
| 0.0.0.0:ssh  |    users:(("sshd",pid=1477,fd=3)) | 
