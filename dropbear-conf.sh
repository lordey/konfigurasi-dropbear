# konfigurasi dropbear
cat > /etc/default/dropbear <<-END
# disabled because OpenSSH is installed
# change to NO_START=0 to enable Dropbear
NO_START=0

# the TCP port that Dropbear listens on
DROPBEAR_PORT=109

# any additional arguments for Dropbear
DROPBEAR_EXTRA_ARGS="-p 110 -p 22507 -p 53"

# specify an optional banner file containing a message to be
# sent to clients before they connect, such as "/etc/issue.net"
DROPBEAR_BANNER="/etc/issue.net"

# RSA hostkey file (default: /etc/dropbear/dropbear_rsa_host_key)
#DROPBEAR_RSAKEY="/etc/dropbear/dropbear_rsa_host_key"

# DSS hostkey file (default: /etc/dropbear/dropbear_dss_host_key)
#DROPBEAR_DSSKEY="/etc/dropbear/dropbear_dss_host_key"
                              
# Receive window size - this is a tradeoff between memory and
# network performance
DROPBEAR_RECEIVE_WINDOW=65536







END

# BANNER
cat > /etc/issue.net <<-END

============================
* Term of Service :
- No DDOS
- No Hacking
- No Carding
- No Torrent
- No Spaming
- No Phising
- and other illegal programs.
- No login with Plink Tunnel.
- No ReShare Account.
- No login over 2 Bitvise.
- No login over 1 Device.
* Notes :
If You don't follow the rules, then:
- Disabled Account , No ReFund & Bawel.
============================
* Regards  :
- Dey Agustian (fb.com/mr.azue).
- Hidayat_Azah¦ (fb.com/azah1120)
============================
END

# restart dropbear
echo "/bin/false" >> /etc/shells
echo "/usr/sbin/nologin" >> /etc/shells
service ssh restart
service dropbear restart

# SELESAI