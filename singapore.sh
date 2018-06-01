#!/bin/bash - 
#===============================================================================
#
#          FILE: singapore.sh
# 
#         USAGE: ./singapore.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2018/05/31 19:35
#      REVISION:  ---
#===============================================================================

# 生成订单收据
wkhtmltopdf --dpi 270 --zoom 0.91 --no-background --print-media-type --disable-smart-shrinking \
	--header-spacing 3 \
    --load-error-handling ignore \
    --footer-left "https://esc.ica.gov.sg/ceps/xhtml/payment/receipt.xhtml" \
    --footer-font-size 7 \
    --footer-right "[page]/[topage]" \
    --header-center "Receipt" \
    --header-left "[date]" \
    --header-font-size 7 \
    singapore/receipt.html receipt.pdf


# 生成
wkhtmltopdf --dpi 280 --zoom 0.95 --debug-javascript --no-background --print-media-type \
	--disable-internal-links \
	--disable-external-links \
	--disable-smart-shrinking \
	--header-spacing 3 \
	--footer-font-size 7 \
    --header-font-size 7 \
    --load-error-handling ignore \
    --footer-left "https://save.ica.gov.sg/save-oval/index.xhtml" \
    --footer-right "[page]/[topage]" \
    --header-center "Immigration & Checkpoints Authority - SAVE" \
    --header-left "[date]" \
    singapore/ack.html ack.pdf


# 生成form14A表格
wkhtmltopdf --dpi 280 --zoom 0.93 --no-background --print-media-type \
	--disable-internal-links \
	--disable-external-links \
	--disable-smart-shrinking \
	--header-spacing 3 \
	--footer-font-size 7 \
    --header-font-size 7 \
    --load-error-handling ignore \
    --footer-left "https://save.ica.gov.sg/save-oval/index.xhtml" \
    --footer-right "[page]/[topage]" \
    --header-center "Immigration & Checkpoints Authority - SAVE" \
    --header-left "[date]" \
    singapore/form14A.html form14A.pdf
