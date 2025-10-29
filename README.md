
```
    sudo docker-compose up --build -d

    sudo docker ps
    sudo docker exec -it webdumps_web-dumps_1 /bin/bash

    ray start --head --num-cpus 4 --temp-dir /tmp/ray_spill
    export AWS_NO_SIGN_REQUEST=1
    bash run_post2023_download.sh
```