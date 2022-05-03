## Generate `Husarnet id` for ROSbot and Laptop stack

```
docker run --rm -it husarnet/husarnet:latest husarnet genid > id_rosbot
```
```
docker run --rm -it husarnet/husarnet:latest husarnet genid > id_rviz
```

## Prepare `dds-config.xml`

```
sed -r 's/([a-f0-9:]*)\s.*/\1/g' id_rosbot
```

```bash
sed -r "s/rviz/$(sed -r 's/([a-f0-9:]*)\s.*/\1/g' id_rviz)/g" dds-config.template.xml > dds-config.xml
sed -r "s/rosbot/$(sed -r 's/([a-f0-9:]*)\s.*/\1/g' id_rosbot)/g" dds-config.template.xml > dds-config.xml
```

