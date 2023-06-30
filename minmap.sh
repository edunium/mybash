#/bin/bash
# by krqch
# AUTOMATIZA NMAP EN RED LOCAL

target=192.168.1.*

prueba()
	nmap -sT $target >> test.txt
#prueba

while IFS= read -r line
do
	echo "$line"
	$(nmap $line)
done < ips.txt

№#########

import paramiko

def connect_to_antenna():
    # Establecer la conexión SSH
    client = paramiko.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    
    try:
        # Conectar a la antena Ubiquiti
        client.connect('192.168.100.234', username='ubnt', password='Kp912kp912!')
        
        # Ejecutar el comando 'discover'
        stdin, stdout, stderr = client.exec_command('discover')
        
        # Mostrar el resultado del comando
        print(stdout.read().decode())
        
    except paramiko.AuthenticationException:
        print("Error de autenticación")
        
    except paramiko.SSHException as e:
        print("Error en la conexión SSH:", str(e))
        
    finally:
        # Cerrar la conexión SSH
        client.close()

connect_to_antenna()
