Primeramente debemos correr estos comandos:

`
Install-Module -Name Selenium -force
`
`
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
`
`
choco install chromedriver -y
`
Tener en cuenta que debemos tener chromedriver actualizado a la misma versión que chrome.

Para actualizar el chromedriver debemos usar el comando:

`choco upgrade chromedriver -y
`


Hecho esto ya podemos ejecutar el script.

Tener en cuenta que en Assets debe estar la dll del netframework que tengamos instalado.
Por defecto se deja la 4.8 (esto es necesario saberlo en caso de no tener windows actualizado)
