#Con este comando nos devuelve un perfil de conexión de red 
#asociado con uno de los adaptadores de red existentes
Get-NetConnectionProfile


# Aquí introduciremos el index de la tarjeta de red que nos interese
# el cual sacaremos del comando anterior
[int]$comando = Read-Host "Por favor, elija la tarjeta de red adecuada"

# Una vez puesta este comando se ejecutará automáticamente, con lo que
# cambiará la red de pública a privada
Set-NetConnectionProfile -InterfaceIndex $comando -NetworkCategory Private