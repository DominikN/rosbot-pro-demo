# rosbot-pro-demo

A demo showing how to use ROSbot PRO with Nav2 and RViz

## Quick start

1. Connect ROSbot PRO and laptop to the same LAN
2. Clone this repo to both: ROSbot PRO and laptop
3. Launch:

  - On laptop:
    
    ```bash
    xhost local:root
    docker compose -f compose.pc.yaml up
    ```

  - On ROSbot PRO:

    ```bash
    docker compose -f compose.rosbot.yaml up
    ```