#!/bin/sh
latexmk
gsutil cp main.pdf gs://web.evanchen.cc/upload/geombook-errata.pdf
gsutil setmeta -h 'Cache-Control:private, max-age=0, no-transform' gs://web.evanchen.cc/upload/geombook-errata.pdf
