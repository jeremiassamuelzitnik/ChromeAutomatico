#Importamos el WebDriver.dll
#Import-Module $PSScriptRoot\assets\WebDriver.dll
Add-Type -Path "$PSScriptRoot\assets\WebDriver.dll"

#Decalaramos las variables de conexión y consulta.

$chromeOptions=New-object OpenQA.selenium.chrome.ChromeOptions
$Chrome=New-Object OpenQA.selenium.chrome.ChromeDriver
$by=[OpenQA.selenium.by]

#Ejecución:

#Entramos a la página (Google).
$Chrome.Navigate().GoToUrl("http://google.com/")

#Encontramos el cuandro de texto.
$eleInput = $Chrome.FindElement($by::XPath('//*[@id="APjFqb"]'))
#Escribimos.
$eleInput.SendKeys('¡CACHO!')
#Esperamos 1 Francia.
timeout /t 1

#Encontramos el botón.
$eleClick = $Chrome.FindElement($by::name('btnK'))
#Damos click
$eleClick.click()


#Entramos a la página inutil.
$Chrome.Navigate().GoToUrl("https://theuselessbutton.com/")

#Encontramos el botón.
$eleClick = $Chrome.FindElement($by::id('countButton'))

#Loopeamos el click
while ($true){
$eleClick.click()
}
