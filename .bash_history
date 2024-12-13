sudo apt update && sudo apt upgrade -y
nano sysopctl.sh
chmod +x sysopctl.sh
./sysopctl.sh --help
./sysopctl.sh service list
./sysopctl.sh system load
./sysopctl.sh backup /home/user/documents
./sysopctl.sh process monitor
function display_help {     echo -e "\033[1;32mUsage:\033[0m sysopctl [command]";     echo "";     echo -e "\033[1;34mCommands:\033[0m";     echo "  --help                 Show help menu";     echo "  --version              Show version information";     echo "  service list           List all running services";     echo "  service start <name>   Start a service";     echo "  service stop <name>    Stop a service";     echo "  system load            Show current system load";     echo "  disk usage             Show disk usage information";     echo "  process monitor        Monitor system processes";     echo "  logs analyze           Analyze system logs";     echo "  backup <path>          Backup files to /backup/";     echo "";     echo "Example:";     echo "  sysopctl service list";     echo "  sysopctl backup /home/user/documents"; }
function display_help {     echo -e "\033[1;32mUsage:\033[0m sysopctl [command]";     echo "";     echo -e "\033[1;34mCommands:\033[0m";     echo "  --help                 Show help menu";     echo "  --version              Show version information";     echo "  service list           List all running services";     echo "  service start <name>   Start a service";     echo "  service stop <name>    Stop a service";     echo "  system load            Show current system load";     echo "  disk usage             Show disk usage information";     echo "  process monitor        Monitor system processes";     echo "  logs analyze           Analyze system logs";     echo "  backup <path>          Backup files to /backup/";     echo "";     echo "Example:";     echo "  sysopctl service list";     echo "  sysopctl backup /home/user/documents"; }
function display_help {     echo -e "\033[1;32mUsage:\033[0m sysopctl [command]";     echo "";     echo -e "\033[1;34mCommands:\033[0m";     echo "  --help                 Show help menu";     echo "  --version              Show version information";     echo "  service list           List all running services";     echo "  service start <name>   Start a service";     echo "  service stop <name>    Stop a service";     echo "  system load            Show current system load";     echo "  disk usage             Show disk usage information";     echo "  process monitor        Monitor system processes";     echo "  logs analyze           Analyze system logs";     echo "  backup <path>          Backup files to /backup/";     echo "";     echo "Example:";     echo "  sysopctl service list";     echo "  sysopctl backup /home/user/documents"; }
display_help
git init
git add sysopctl.sh
git commit -m "Initial commit for sysopctl"
git remote add origin https://github.com/KrishChouhan486/cli.git
git branch -M main
git push -u origin main
git branch
git add sysopctl.sh  # Or any other files you want to commit
git commit -m "Initial commit"
git config --global user.name "cli"
git config --global user.email "krishchouhan468@gmail.com"
git config --global --list
git init
git add sysopctl.sh
git commit -m "Initial commit for cli"
git remote add origin https://github.com/KrishChouhan486/cli.git
git remote set-url origin https://github.com/KrishChouhan486/cli.git
git push -u origin main
git init
git add sysopctl.sh
git commit -m "Initial commit for sysopctl"
git remote add origin https://github.com/KrishChouhan486/Cli.git
git remote remove origin
git remote set-url origin https://github.com/KrishChouhan486/Cli.git
git push -u origin main
git config --global credential.helper store
git push -u origin mai
chmod +x sysopctl.sh
./sysopctl.sh --help
./sysopctl.sh --version
./sysopctl.sh service list
./sysopctl.sh service start console-getty.service
./sysopctl.sh disk usage
./sysopctl.sh process monitor
./sysopctl.sh logs analyze
journalctl -xe
sudo ./sysopctl.sh logs analyze
logger "Test entry for sysopctl log analysis"
sudo systemctl restart systemd-resolved
sudo systemctl start non_existent_service
journalctl -xe
journalctl -p err --since "1 hour ago"
sudo tail /var/log/messages
sudo journalctl -xe
sudo journalctl -f
sudo tail -f /var/log/syslog
sudo tail -f /var/log/auth.log
ls -l /var/log/messages
git remote add origin https://github.com/KrishChouhan486/Cli.git
git remote -v
git remote set-url origin https://github.com/KrishChouhan486/Cli.git
git remote -v
git push -u origin main
git pull origin main
git config pull.rebase false
git pull origin main
git commit -m "Merge remote changes"
git add .
git add .bashrc .gitconfig
git commit -m "Merge remote changes"
git push origin main
git status
git pull origin main --no-rebase
git pull origin main --allow-unrelated-histories
git status
git push origin main
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch .git-credentials" --prune-empty --tag-name-filter cat -- --all
git push origin main --force
