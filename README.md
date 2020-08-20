# tiny-4g

To start everything run

```
docker-compose up
```

To get the UE to download a file run

```
docker-compose exec ue curl web-server/100MB.file --output 100MB.file
```