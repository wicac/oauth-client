# oauth-client
simple oauth client on top of docker

## Notes:
* This image will use default docker assigned IP (192.168.99.100)
  If you want to change the address you can make change in these files:
  * app.js
* Dockercommand file includes all docker command that you will need to build and run this image properly. Feel free to change as needed.

## How to start:
1. Build oauth-client image:
   ```docker build -t [your image name]```
2. Run image 
   ```docker run -d -p 3001:3000 --name oauth-client -t [your image name]```
