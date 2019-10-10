#!/bin/bash

ADDRESS_DEV="10.128.13.222:28000"
if [ -z $1 ]
then
  testId="*** Unknown Test ***"
elif [ -n $1 ]
then
# otherwise make first arg as a rental
  testId=$1
fi

case "$testId" in
    "test0")
    ./gnmi_cli -address $ADDRESS_DEV -capabilities \
    -encodingType "PROTO" \
    -tlsDisabled \
     ;;

    ## Get Example when the encoding Type is proto and TLS is disabled
    "test1")
    ./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'config'> elem:<name:'enabled'>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
     ;;
    "test2")
	./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'ethernet'> elem:<name:'config'> elem:<name:'port-speed'>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
     ;;
"test3")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
    -proto "subscribe:<mode: 1, prefix:<>, subscription:<path: <elem: <name:'interfaces'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
     ;;
"test4")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
    -proto "subscribe:<mode: 1, prefix:<>, subscription:<path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '*'>>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
     -polling_interval 5s\
     ;;
"test5")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 1, prefix:<>, subscription:<path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'state'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 5s\
     ;;
"test6")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 1, prefix:<>, subscription:<path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '*'>> elem<name:'state'> elem:<name:'ifindex'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 5s\
     ;; 

"test7")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 1, prefix:<>, subscription:<path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '*'>> elem<name:'state'> elem:<name:'name'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 5s\
     ;; 

"test8")
    ./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '*'>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
     ;;

"test9")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 0, prefix:<>, subscription:<path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'state'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 5s\
     ;;

"test10")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 0, prefix:<>, subscription:<mode:2,sample_interval:1000, path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'state'> elem:<name:'counters'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 10s\
     ;;
"test11")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 0, prefix:<>, updates_only:true, subscription:<mode:2, sample_interval:1, path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'state'> elem:<name:'counters'> elem:<name:'out-broadcast-pkts'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 10s\
     ;;

"test12")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 0, prefix:<>, updates_only:true, subscription:<mode:1, sample_interval:1000, path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>> elem:<name:'state'> elem:<name:'oper-status'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 10s\
     ;;
"test13")
    ./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '2/0'>> elem:<name:'ethernet'> elem:<name:'config'> elem:<name:'description'>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    ;;
"test14")
    ./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>>  elem:<name:'config'> elem:<name:'health-indicator'>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    ;; 
"test15")
    ./gnmi_cli -address $ADDRESS_DEV -set \
    -proto "update: <path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>>  elem:<name:'config'> elem:<name:'enabled'>> val: <bool_val:true>> " \
    -encodingType "PROTO" \
    -tlsDisabled \
    ;;
"test16")
    ./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>>  elem:<name:'config'> elem:<name:'enabled'>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    ;;
"test17")
    ./gnmi_cli -address $ADDRESS_DEV -set \
    -proto "update: <path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>>  elem:<name:'config'> elem:<name:'health-indicator'>> val: <string_val:'BAD'>> " \
    -encodingType "PROTO" \
    -tlsDisabled \
    ;;  
"test18")
    ./gnmi_cli -address $ADDRESS_DEV -get \
    -proto "path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>>  elem:<name:'config'> elem:<name:'health-indicator'>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    ;;
"test19")  	
     ./gnmi_cli -address $ADDRESS_DEV  \
	  -proto "subscribe:<mode: 0, prefix:<>, updates_only:true, subscription:<mode:1, sample_interval:1000, path: <elem: <name:'interfaces'> elem:<name:'interface' key: <key: 'name' value: '1/0'>> elem:<name:'config'> elem:<name:'health-indicator'>>>>" \
    -encodingType "PROTO" \
    -tlsDisabled \
    -polling_interval 10s\
     ;;  
   *) echo "You have failed to specify what to do correctly."
    exit 1
    ;;
esac    
