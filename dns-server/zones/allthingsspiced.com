$TTL    604800
@       IN      SOA     allthingsspiced.com. admin.allthingsspiced.com. (
                              3         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@ IN NS ns1.allthingsspiced.com.
	

ns1.allthingsspiced.com. IN A 10.0.0.99

internal-interface IN A 10.0.0.90

www    CNAME internal-interface


; CNAME Records
autodiscover	3600	 IN 	CNAME	autodiscover.outlook.com.
email	3600	 IN 	CNAME	email.secureserver.net.
lyncdiscover	3600	 IN 	CNAME	webdir.online.lync.com.
msoid	3600	 IN 	CNAME	clientconfig.microsoftonline-p.net.
sip	3600	 IN 	CNAME	sipdir.online.lync.com.
_domainconnect	3600	 IN 	CNAME	_domainconnect.gd.domaincontrol.com.

; MX Records
@	3600	 IN 	MX	0	allthingsspiced-com.mail.protection.outlook.com.

; TXT Records
@	3600	 IN 	TXT	"google-site-verification=fexRIzkxKoq4ar9smMv3kk-3uFmODh6rPv9_cznP77E"
@	3600	 IN 	TXT	"MS= ms53184492"
@	3600	 IN 	TXT	"v=spf1 include:spf.protection.outlook.com -all"




