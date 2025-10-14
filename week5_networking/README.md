mkdir -p week5_networking          # Create the folder week5_networking (and parent dirs if needed)
ls -l                              # List files and directories in long format
cd week5_networking/               # Move into the week5_networking directory

ip addr show                       # Show all network interfaces and their IP addresses
ifconfig                           # Display network interface details (older command)
ip route show                      # Show routing table (how packets are routed)
cat /etc/resolv.conf               # View DNS resolver configuration (nameserver info)

ping -c 4 google.com               # Send 4 ICMP packets to test connectivity with Google
curl -I https://www.google.com     # Fetch only HTTP headers from Google’s website
curl -sS http://api.github.com | head -n 20   # Quietly fetch API data from GitHub and show first 20 lines
ping -c 2 github.com               # Ping GitHub 2 times to test connectivity
nslookup github.com                # Resolve GitHub’s domain name to an IP address

curl -v https://api.github.com     # Verbose request showing detailed connection info
netstat -tulnp                     # List all listening TCP/UDP ports and associated processes
sudo netstat -tulnp                # Same as above but with root privileges (shows all processes)
dig +short google.com              # Perform a DNS lookup for google.com (short output)
nslookup github.com                # Lookup IP address for github.com (DNS query)
ufw status verbose                 # Show firewall (UFW) status and active rules in detail
sudo ufw status verbose            # Same as above with admin rights (for full details)
