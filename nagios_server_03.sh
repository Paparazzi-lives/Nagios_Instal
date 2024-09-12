#!/bin/bash

# On the NAGIOS SERVER 
# Step 24: Add Host to Nagios Configuration in NAGIOS SERVER

# Note: Replace <nagios-host-public-ip> with the actual Public IP addresses of your NAGIOS HOST

sudo bash -c 'cat > /usr/local/nagios/etc/servers/nagihost.cfg <<EOL
define host {
    use                             linux-server
    host_name                       nagihost
    alias                           My first Apache server
    address                         52.59.195.250
    max_check_attempts              5
    check_period                    24x7
    notification_interval           30
    notification_period             24x7
}

define service {
   use                      generic-service
   host_name                nagihost
   service_description      HTTP
   check_command            check_http
}
EOL'
sudo systemctl restart nagios.service #to restart nagios server

# Step 25 — Monitor the newly added host in the Nagios Website

# 1. Go to the Nagios Website, refresh and click on Hosts.
# 2. newly added host “nagihost” is added and the status is also up.
# 3. Click on it and monitor its services if there are any

#Steps 26 and 27 done on the HOST

# Step 28: Add HTTP Service to nagihost.cfg File in Nagios Server (DEFINED BY SECOND BLOCK ABOVE "define service")

# Step 29 — Monitor the HTTP service in the Nagios Website
# 1. Go to the Nagios Website and click on Services.
# 2. The HTTP service for “nagihost” is added and the status is OK.
# 3. if the status shows critical or pending we can click on that pending server
# 4. it takes us to server state information in that we can click on reschedule at servers commands
# 5. then we will get into command options there we have to click on commit
# 6. later click on done


# Step 30: Deletion (Optional)
# You can terminate the Nagios and remote host instances if desired.

echo "Nagios setup and monitoring configuration complete. Please verify the setup by visiting the Nagios web interface."
