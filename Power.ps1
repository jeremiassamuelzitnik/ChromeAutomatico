#Importamos el WebDriver.dll
#Import-Module $PSScriptRoot\assets\WebDriver.dll
Add-Type -Path "$PSScriptRoot\assets\WebDriver.dll"

#Decalaramos las variables de conexi�n y consulta.

$chromeOptions=New-object OpenQA.selenium.chrome.ChromeOptions
$Chrome=New-Object OpenQA.selenium.chrome.ChromeDriver
$by=[OpenQA.selenium.by]

#Ejecuci�n:

#Entramos a la p�gina (Google).
$Chrome.Navigate().GoToUrl("http://google.com/")

#Encontramos el cuandro de texto.
$eleInput = $Chrome.FindElement($by::XPath('//*[@id="APjFqb"]'))
#Escribimos.
$eleInput.SendKeys('�CACHO!')
#Esperamos 1 Francia.
timeout /t 1

#Encontramos el bot�n.
$eleClick = $Chrome.FindElement($by::name('btnK'))
#Damos click
$eleClick.click()


#Entramos a la p�gina inutil.
$Chrome.Navigate().GoToUrl("https://theuselessbutton.com/")

#Encontramos el bot�n.
$eleClick = $Chrome.FindElement($by::id('countButton'))

#Loopeamos el click
while ($true){
$eleClick.click()
}
