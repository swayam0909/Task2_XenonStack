#!/bin/bash
# sysopctl - A custom system management CLI tool.

# Display help menu
function display_help {
    echo "Usage: sysopctl [command]"
    echo ""
    echo "Commands:"
    echo "  --help                 Show help menu"
    echo "  --version              Show version information"
    echo "  service list           List all running services"
    echo "  service start <name>   Start a service"
    echo "  service stop <name>    Stop a service"
    echo "  system load            Show current system load"
    echo "  disk usage             Show disk usage information"
    echo "  process monitor        Monitor system processes"
    echo "  logs analyze           Analyze system logs"
    echo "  backup <path>          Backup files to /backup/"
    echo ""
    echo "Example:"
    echo "  sysopctl service list"
    echo "  sysopctl backup /home/user/documents"
}

# Check the version
function display_version {
    echo "sysopctl version v0.1.0"
}

# List running services
function list_services {
    systemctl list-units --type=service
}

# Manage services
function manage_service {
    case $2 in
        start)
            sudo systemctl start $3
            echo "Service $3 started successfully!"
            ;;
        stop)
            sudo systemctl stop $3
            echo "Service $3 stopped successfully!"
            ;;
        *)
            echo "Invalid service command. Use 'start' or 'stop'."
            ;;
    esac
}

# Show system load
function show_system_load {
    uptime
}

# Check disk usage
function check_disk_usage {
    df -h
}

# Monitor system processes
function monitor_processes {
    top
}

# Analyze system logs
function analyze_logs {
    journalctl -p crit --since "1 hour ago"
}

# Backup files
function backup_files {
    rsync -avz $2 /backup/
    echo "Backup of $2 completed successfully!"
}

# Main logic
case $1 in
    --help)
        display_help
        ;;
    --version)
        display_version
        ;;
    service)
        case $2 in
            list)
                list_services
                ;;
            start|stop)
                manage_service $@
                ;;
            *)
                echo "Invalid service command. Use 'list', 'start', or 'stop'."
                ;;
        esac
        ;;
    system)
        case $2 in
            load)
                show_system_load
                ;;
            *)
                echo "Invalid system command. Use 'load'."
                ;;
        esac
        ;;
    disk)
        case $2 in
            usage)
                check_disk_usage
                ;;
            *)
                echo "Invalid disk command. Use 'usage'."
                ;;
        esac
        ;;
    process)
        case $2 in
            monitor)
                monitor_processes
                ;;
            *)
                echo "Invalid process command. Use 'monitor'."
                ;;
        esac
        ;;
    logs)
        case $2 in
            analyze)
                analyze_logs
                ;;
            *)
                echo "Invalid logs command. Use 'analyze'."
                ;;
        esac
        ;;
    backup)
        backup_files $@
        ;;
    *)
        echo "Invalid command. Use '--help' for available options."
        ;;
esac

