FROM python:3.12.11-slim-bookworm

WORKDIR /web-dumps

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl procps tzdata \
 && update-ca-certificates \
 && rm -rf /var/lib/apt/lists/*


COPY scripts/cc_paths ./cc_paths
COPY scripts/process_common_crawl_w_ray.py ./process_common_crawl_w_ray.py
COPY scripts/run_post2023_download.sh ./run_post2023_download.sh


COPY scripts/requirements.txt ./requirements.txt
RUN pip install -U pip wheel setuptools \
 && pip install -r requirements.txt