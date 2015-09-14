# chocolatey-liteide
liteide package for local chocolatey server 

## usage

### pack

* you should have chocolatey ( v0.9.9.8+) installed
* assume you have `server.pkg` in your host or dns
  * edit tools/chocolateyInstall.ps1 for some url else
* run `cpack`
* run `cpush liteide.<version>.nupkg -s <your local server> -k <your apikey>`
* upload `liteidex<version>.windows-qt4.zip` to `http://server.pkg/pkgs/liteide/`


### install

* run `cinst liteide -s <your local server>`

