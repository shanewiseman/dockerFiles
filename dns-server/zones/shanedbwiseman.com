$TTL    604800
@       IN      SOA     shanedbwiseman.com. admin.shanedbwiseman.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@ IN NS ns1.shanedbwiseman.com.
	

ns1.shanedbwiseman.com. IN A 10.0.0.99

internal-interface IN A 10.0.0.90

mycloud     CNAME internal-interface
freenas     CNAME internal-interface
kub         CNAME internal-interface
mediacenter CNAME internal-interface
nodejs      CNAME internal-interface
password    CNAME internal-interface
nas         CNAME internal-interface
emby        CNAME internal-interface
torrent     CNAME internal-interface
photography CNAME internal-interface 
vpn         CNAME internal-interface 
emailserver CNAME internal-interface 


shanedbwiseman.com. IN MX 10 internal-interface
                    IN TXT "v=spf1 mx -all"

_dmarc.shanedbwiseman.com. IN TXT "v=DMARC1; p=none; rua=mailto:test@shanedbwiseman.com"
