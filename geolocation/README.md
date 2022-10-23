## Geolocation using IP address
> This shell script can give the geolocation of a machine having a specific IP address. 

- It uses `https://ipinfo.io` API endpoint to get the geolocation data. 
- Usage: 
    - `./location.sh -m` to get your own location
    - `./location.sh -u <specify_ip_address>` to get the location of specified IP address
    - `./location.sh -h` to get to the help menu

> Note: The geolocation data is not accurate if the proxy server is used or if the substation of your > ISP is very distant from your current location. 
