# Set the environment in which the rack's app will run. The value must be a string.
#
# The default is "development".
#
environment 'production'

# Daemonize the server into the background. Highly suggest that
# this be combined with "pidfile" and "stdout_redirect".
#
# The default is "false".
#
# daemonize
daemonize true

# Store the pid of the server in the file at "path".
#
pidfile '/data/wwwroot/redmine/tmp/pids/puma.pid'

# Use "path" as the file to store the server info state. This is
# used by "pumactl" to query and control the server.
#
state_path '/data/wwwroot/redmine/tmp/pids/puma.state'

# Redirect STDOUT and STDERR to files specified. The 3rd parameter
# ("append") specifies whether the output is appended, the default is
# "false".
#
stdout_redirect '/data/wwwroot/redmine/log/stdout.log', '/data/wwwroot/redmine/log/stderr.log'

# stdout_redirect '/u/apps/lolcat/log/stdout', '/u/apps/lolcat/log/stderr', true

port 9292