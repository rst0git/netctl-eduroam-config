# netctl-eduroam-config

The file "eduroam" is example of netctl wireless configurations for eduroam wireless network.

It should be placed in `/etc/netctl/`.

Replace : 

* `<username>@<university domain>` with your university credentials

* `<password hash>` with md4 hash of your password 
- It can be obtained with 
    `echo -n "<password>" | iconv -t utf16le | openssl md4`
- Or using the script eduroam-pwd-hash.sh
- **WARNING:** Your password will appear as plain text when you type it in the terminal, make sure you delete the shell history 

    `history --delete --contains '| iconv -t utf16le | openssl md4'`

Connect : `sudo netctl start eduroam` 
Disconnect: `sudo netctl stop eduroam`

Note: NetworkManager has conflict with netctl -> `sudo systemctl stop NetworkManager.service` 
