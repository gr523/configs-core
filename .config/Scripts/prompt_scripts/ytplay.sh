query=$(echo "" | dmenu -c -p "Search Term : " | sed "s/ /+/g")
celluloid --enqueue "https://youtube.com/$(curl -s "https://vid.puffyan.us/search?q=${query}" | grep -Eo "watch\?v=.{11}" | head -1)"
