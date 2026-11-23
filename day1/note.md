# Day1 morning | VMware Ubuntu
whoami hostname uname -a lsb_release -a ping
sudo apt update
pwd ls cd mkdir -p touch cp mv rm cat head tail man
## Day1 下午 Git
sudo apt install git
git --version
git config --global user.name / user.email
git config --list
git init
git status
git add 文件名 / git add .
git commit -m "备注"
git log
git log --oneline
git checkout -- 文件 （未add撤销修改）
git reset HEAD 文件（撤回暂存）
## Day1 晚上 Git 远程
ssh-keygen -t ed25519 -C "邮箱"
cat ~/.ssh/id_ed25519.pub
ssh -T git@github.com
git remote add origin 远程地址
git remote -v
git push -u origin main
git checkout -b 分支名
git push origin 分支名
git clone 远程地址
