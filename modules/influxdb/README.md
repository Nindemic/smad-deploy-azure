Influxdb UI:

Get pod name by running:

$ kubectl get pods 

Use port-forward to forward port to influxdb pod
    Usage:
    $  kubectl port-forward TYPE/NAME [options] [LOCAL_PORT:]REMOTE_PORT
    [...[LOCAL_PORT_N:]REMOTE_PORT_N]

Run:
$ kubectl port-forward NAME 8086

ie NAME = influx-influxdb-65bf6b76ff-86pls

visit 127.0.0.1:8086

sign in

if signed in as root, change organization into monitoring-data


For more info see:

https://docs.influxdata.com/influxdb/v2.0/get-started/

https://docs.influxdata.com/influxdb/v2.0/reference/urls/

https://github.com/bitnami/charts/tree/master/bitnami/influxdb/#installing-the-chart
