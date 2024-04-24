Enter the mongo shell

```bash
kubectl exec -it mongodb-replica-0 -n gic-chathub -- mongo
```

Initialize replication

```bash
rs.initiate()
```

Set up a variable

```bash
var cfg = rs.conf()
```

Add primary server

```bash
cfg.members[0].host="mongodb-replica-0.mongo:27017"
```

Setup config

```bash
rs.reconfig(cfg)
```

Add the Second MongoDB Instance

```
rs.add("mongodb-replica-1.mongo:27017")
```


