# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/cms"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/cms/tmp/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/cms/log/unicorn.log"
stdout_path "/var/www/cms/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.cms.sock"
listen "/tmp/unicorn.cms.sock"
# Number of processes

worker_processes 4

# Time-out
timeout 30
