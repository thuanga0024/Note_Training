#!/bin/bash

psql -d test123 -c "select original_name,created_at from data_files ORDER BY created_at DESC LIMIT 10;"
