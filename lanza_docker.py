import sys
import subprocess

if(len(sys.argv)<2):
    n_ccd = "1"
else:
    n_ccd = sys.argv[1]

with open("docker-compose-mult-ccd.yml", "r") as f:
    n_lineas = len(f.readlines())
    n_camaras = int((n_lineas-2)/5)

if(n_camaras != int(n_ccd)):
    subprocess.call(["python", "crea_dc.py", n_ccd])

try:
    subprocess.call(["docker-compose", "-f", "docker-compose-mult-ccd.yml", "up", "--remove-orphans"])
except KeyboardInterrupt:
        print("Ha finalizado correctamente usando Ctrl+C")
except Exception as e:
        print(str(e))
