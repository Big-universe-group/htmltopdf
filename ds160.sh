#!/bin/bash - 
#===============================================================================
#
#          FILE: ds160.sh
# 
#         USAGE: ./ds160.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2018/05/31 20:15
#      REVISION:  ---
#===============================================================================


wkhtmltopdf --dpi 300 --no-background --print-media-type --disable-smart-shrinking \
	--header-spacing 3 \
    --load-error-handling ignore \
    --footer-left "https://ceac.state.gov/GenNIV/General/ESign/Complete_Done.aspx?node=Done" \
    --footer-font-size 7 \
    --footer-right "[page]/[topage]" \
    --header-center "Nonimmigrant Visa - Confirmation Page" \
    --header-left "[date]" \
    --header-font-size 7 \
    ds160/sign.html sign.pdf


wkhtmltopdf --zoom 0.8 --dpi 230 --no-background --print-media-type --disable-smart-shrinking \
	--header-spacing 3 \
    --load-error-handling ignore \
    --footer-left "https://ceac.state.gov/GenNIV/General/ESign/Complete_Done.aspx?node=Done" \
    --footer-font-size 7 \
    --footer-right "[page]/[topage]" \
    --header-center "Nonimmigrant Visa - Confirmation Page" \
    --header-left "[date]" \
    --header-font-size 7 \
    ds160/app.html app.pdf
