# rosbot-pro-demo

A demo showing how to use ROSbot PRO with Nav2 and RViz

## Quick start

> **Prerequisites**
>
> Make sure the right version of firmware for STM32F4 MCU is flashed on ROSbot. To flash the right firmware, open ROSbot's terminal and execute this command:
> 
> ```bash 
> docker run --privileged --rm husarion/rosbot:latest ./flash_firmware_diff.sh
> ```

Clone this repo to both ROSbot PRO and laptop:

```
git clone https://github.com/dominikn/rosbot-pro-demo.git
```

... and choose one of the following network configurations:

### In LAN

1. Connect ROSbot PRO and laptop to the same LAN
2. Launch:

  - On laptop:
    
    ```bash
    xhost local:root
    docker compose -f compose.pc.yaml -f compose.pc.lan.yaml up
    ```

  - On ROSbot PRO:

    ```bash
    docker compose -f compose.rosbot.yaml -f compose.rosbot.lan.yaml up
    ```

### Over The Internet (Husarnet)

1. Connect ROSbot PRO and laptop to the same or different networks
2. Create `.env` file based on the `.env.template` and paste your own Husarnet Join Code here
3. Launch:

  - On laptop:
    
    ```bash
    xhost local:root
    docker compose -f compose.pc.yaml -f compose.pc.husarnet.yaml up
    ```

  - On ROSbot PRO:

    ```bash
    docker compose -f compose.rosbot.yaml -f compose.rosbot.husarnet.yaml up
    ```

### Over The Internet (Husarnet + DDS Router)

1. Connect ROSbot PRO and laptop to the same or different networks
2. Create `.env` file based on the `.env.template` and paste your own Husarnet Join Code here
3. Launch:

  - On laptop:
    
    ```bash
    xhost local:root
    docker compose -f compose.pc.yaml -f compose.pc.ddsrouter.yaml up
    ```

  - On ROSbot PRO:

    ```bash
    docker compose -f compose.rosbot.yaml -f compose.rosbot.ddsrouter.yaml up
    ```

### No network: run everything on ROSbot PRO

1. Connect the screen, mouse and keyboard to the rear panel of the ROSbot PRO, and open a terminal app.
2. Launch:

  - On ROSbot PRO:

    ```bash
    xhost local:root
    docker compose -f compose.pc.yaml -f compose.rosbot.yaml up
    ```