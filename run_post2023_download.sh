#!/bin/bash
# For licensing see accompanying LICENSE file.
# Copyright (C) 2025 Apple Inc. All Rights Reserved.
#

# Leave out trailing slash in parent_dest_dir
parent_dest_dir="data/"

for gs in 01 10
do
    dest_dir=${parent_dest_dir}/gs_${gs}_of_10
    python process_common_crawl_w_ray.py \
        --json_file_path cc_paths/CC_paths_${gs}_of_10.json.gz \
        --output_path "$parent_dest_dir" \
        --documents_per_jsonl 20000 \
        --wet \
        --force_parallelism 8 \
        --batch_size 64 \
        --ray_num_cpus 1
done
