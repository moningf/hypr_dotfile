# 1. 更新系统 & 安装常用工具
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl wget git neovim tmux htop ranger unzip zip tar

# 2. 换国内源（阿里云镜像，速度快）
sudo sed -i 's|http://.*archive.ubuntu.com|http://mirrors.aliyun.com|g' /etc/apt/sources.list
sudo sed -i 's|http://.*security.ubuntu.com|http://mirrors.aliyun.com|g' /etc/apt/sources.list
sudo apt update

# 3. 安装美化工具 (neofetch + bat + lsd)
sudo apt install -y neofetch bat lsd

# 4. 安装 zsh + oh-my-zsh (可选，但强烈推荐)
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 5. 安装 yazi 文件管理器 (最新预编译版)
curl -sS https://raw.githubusercontent.com/sxyazi/yazi/main/scripts/install.sh | bash

# 6. 安装 fzf (终端模糊查找器，ranger/yazi 搭配神器)
sudo apt install -y fzf

# 7. 安装 exa (ls 替代品，目录漂亮显示)
sudo apt install -y exa

# 8. 清理不必要包
sudo apt autoremove -y

# 9. 系统信息展示 (可选)
neofetch

echo "======== 初始化完成！========"
echo "推荐重启终端使 zsh 生效，直接输入 exit 退出 SSH 再重连"

