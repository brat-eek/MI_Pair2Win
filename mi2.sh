for i in {1..50}
do
time=`node -e "a = new Date; console.log(a.getTime());"` 

get_response=`curl -s "http://hd.global.mi.com/in/sec/startgame?from=mb&stage=$i&_=$time&jsonpcallback=jsonpCallback" -H 'Host: hd.global.mi.com' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0' -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: http://mobile.mi.com/in/events/2ndanniversary/playgame/game/' -H 'Cookie: gfrom=mi; xm_user_in_num=0; serviceToken=imGlVJIS1F%2FVKN2Jx658%2BncnTtjR0F9Nnid8Kl1%2BVIV1oZ0QstyEOWifw7K0Lp62Tg9e3NAVf1ZZO5n%2FGqEO9XmUGhsBTR6g3mFbFyra02TMimOFJUgdLvtsttcikEWyK8r83GI4ucoUCQibOKo%2Bv%2BUWnAmQJtkOph0VRNidyK4%3D; mstuid=1468585107584_6676; _ga=GA1.2.575026551.1468585108; xmuuid=XMGUEST-F250A56C-BEBA-5061-3094-38BFC7B79566; globalSite=in; mstz=4082af837c40156d-8961c08c5fc16c0b|http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Flevel%2F|540319563.37|pcpid|http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Flevel%2F|http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2F; xm_vistor=1468585107584_6676_1468679891076-1468680009419; XM_1622274385_UN=Prateek+Singhi; xm_order_btauth=bb698c4fd8a64d5974a4e207a0e9b27d; userId=1622274385; msttime=http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Fgame%2F%23level%3D28; _gat=1; msttime1=http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Fgame%2F%23level%3D28; AWSELB=AF3B6DD916347A1C7436F9D60C44D05DA8FBED9E3DADCE00FDC0FB5781E73C51CA24B697B6EA52E82C2755B0470D594DE5FB0325D0F9DDE334DC422858FDE2D27227C7009E' -H 'Connection: keep-alive'`

path=`echo "$get_response" | cut -d":" -f6 | cut -d"\"" -f2 | grep -o . | sort | tr -d "\n"`
graph_id=`echo "$get_response" | cut -d"\"" -f19 | tr -d ":,"`

curl -s "http://hd.global.mi.com/in/sec/endgame?from=mb&stage=$i&use_time=0&graph_id=$graph_id&path=$path&_=$time&jsonpcallback=jsonpCallback" -H 'Host: hd.global.mi.com' -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0' -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' --compressed -H 'Referer: http://mobile.mi.com/in/events/2ndanniversary/playgame/game/' -H 'Cookie: gfrom=mi; xm_user_in_num=0; serviceToken=imGlVJIS1F%2FVKN2Jx658%2BncnTtjR0F9Nnid8Kl1%2BVIV1oZ0QstyEOWifw7K0Lp62Tg9e3NAVf1ZZO5n%2FGqEO9XmUGhsBTR6g3mFbFyra02TMimOFJUgdLvtsttcikEWyK8r83GI4ucoUCQibOKo%2Bv%2BUWnAmQJtkOph0VRNidyK4%3D; mstuid=1468585107584_6676; _ga=GA1.2.575026551.1468585108; xmuuid=XMGUEST-F250A56C-BEBA-5061-3094-38BFC7B79566; globalSite=in; mstz=4082af837c40156d-8961c08c5fc16c0b|http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Flevel%2F|540319563.37|pcpid|http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Flevel%2F|http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2F; xm_vistor=1468585107584_6676_1468679891076-1468680009419; XM_1622274385_UN=Prateek+Singhi; xm_order_btauth=bb698c4fd8a64d5974a4e207a0e9b27d; userId=1622274385; msttime=http%3A%2F%2Fmobile.mi.com%2Fin%2Fevents%2F2ndanniversary%2Fplaygame%2Fgame%2F%23level%3D28; _gat=1; AWSELB=AF3B6DD916347A1C7436F9D60C44D05DA8FBED9E3DADCE00FDC0FB5781E73C51CA24B697B6EA52E82C2755B0470D594DE5FB0325D0F9DDE334DC422858FDE2D27227C7009E' -H 'Connection: keep-alive'
done


