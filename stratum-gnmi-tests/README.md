#Direct gNMI connection to Stratum devices

This script provides examples of gNMI client connections to the Stratum devices

It is using a modified version of gnmi_cli from the gnmi project
at https://github.com/openconfig/gnmi/tree/master/cmd/gnmi_cli

It is modified to allow the
1) -tlsDisabled flag
2) -encodingType "PROTO" or "JSON" for **get** operation ("JSON" is default).

It can be run like
```bash
ADDRESS_DEV=10.128.13.222 ./tests.sh test1
```
