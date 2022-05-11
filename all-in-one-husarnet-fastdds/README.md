## Generate `Husarnet id` for ROSbot and Laptop stack

```
./generate-dds-config.sh
```

## Get Husarnet Join Code

and paste it inside `.env` file in this repo. It should look like this:

```
HUSARNET_JOINCODE=fc94:b01d:1803:8dd8:b293:5c7d:7639:932a/xxxxxxxxxxxxxxxxxxxxxx
```

## Copy this folder to ROSbot XL

```
rsync -avzh ./ husarion@10.5.10.164:/home/husarion/temp/rosbot-pro-demo
```

> `10.5.10.164` is ROSbot's IP addr in the local network, replace it with your own

## Runnning the project

### On laptop

```
xhost local:root
docker compose -f compose.pc.yaml up
```

### On ROSbot

```
docker compose -f compose.rosbot.yaml up
```