# Nagios_Instal

#In this installation, we are using ubuntu variance on Linux as our operating system.
Step-by-step to install Nagios on your ubuntu server.

The scripts are in 4  parts. 3 for the Nagios_Server and 1 for the Nagios_Host


Steps to use:
Create two EC2 instances (1 named Nagios_Server and the other Nagios_Host)
Allow inbound rules for ports 20(SSH), 443 (https) , 80 (http), 8080 (Custom TCP), 8081 (Custom TCP) and 2377 (Custom TCP) for TCP and All ICMP - IPV4 for the Nagios_Server - refer to step 1 of the guide Aminu Provided
Allow inbound rules for ports 20(SSH), 443 (https) , 80 (http) for the Nagios Host
Run the FIRST script (Nagios_server1.sh) on the Nagios_Server and interact where needed
Sign in to nagios using <your-nagios-server-public-ip>/nagios eg: 25.12.14.15/nagios
Run the SECOND script (Nagios_server2.sh) on the Nagios Server
Follow step 22 of Aminu's online guide to reschedule the changes to update changes
Run the THIRD script (nagios_host.sh) on the Nagios_Host and interact where needed
Run the FOUTH script (Nagios_server3.sh) on the Nagios_Server - (Note: In this script, you need to replace the IP (in this case 52.59.195.250))  with the PUBLIC IP of your Nagios_Host
Done

Bonus, you can paste the public IP of your Nagios Host in your browser to see the nice website it is hosting!
Note, you may need to manually copy the scripts to your server, then run chmod +x <name of the script> to make it executable or use the SCP command to copy it to your servers.
