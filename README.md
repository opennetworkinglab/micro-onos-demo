# micro-onos-demo
Scripts and various tools to run the ONF Connect µONOS demo

Run Stratum:
```while true; ./start-stratum-container.sh; done```

Restart Stratum for new round:
```~/demo/reset-switches```

Run ONOS:
```~/demo/run-onos```

Configure ONOS after start:
```~/demo/configure-onos```

Update roles after onos-ztp restart
```~/demo/update-roles```

Add devices in a sequence:
```# 2 peers, 1 spine, switch peers to leaves
~/demo/add-devices```

Set role of wedge 65 switches:
```~/demo/set-wedge-65-roles {leaf|peer}```

