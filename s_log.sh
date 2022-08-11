#!/data/data/com.termux/files/usr/bin/bash
#Author kazi samir.....
#Date 29 jun 2021
#Make a banne function....
banner(){
	echo -e "\e[35;1m"
	echo -e "
_________   _        _______  _______ 
\\__   __/  ( \\      (  ___  )(  ____ \\
   ) (     | (      | (   ) || (    \/
   | |     | |      | |   | || |      
   | |     | |      | |   | || | ____ 
   | |     | |      | |   | || | \_  )
   | |     | (____/\| (___) || (___) |
   )_(_____(_______/(_______)(_______)
     (_____) \e[32;1m ✍ Made by samir 🙏
     "
}
banner
chmod +x s_log.sh
cp s_log.sh ~
cp -R .slog ~
cd ~
if [[ -d .s_log ]];then
	rm -rf .s_log
	mkdir .s_log
else
	mkdir .s_log
fi
echo -e "🔒 Enter the username: "
read userName
echo "${userName}" > .s_log/username

echo -e "🔑\e[35;1mEnter the password: "
read userPass
echo "${userPass}" > .s_log/userpass
cd 
cd ..
cd usr/etc
echo './s_log.sh' >> bash.bashrc
echo ""
echo -e "🔐 \e[0;1mUsername and password set sucessfully."
