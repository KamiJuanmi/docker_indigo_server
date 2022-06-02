import sys
import random

print("Creando archivo docker-compose")

n_ccd = int(sys.argv[1])

f = open("docker-compose-mult-ccd.yml", "w")

f.write("version: \"3.9\"\nservices:\n")

for i in range(0, n_ccd):
    aux = random.randint(0, 1)
    # aux = True
    if(aux):
        simulador = "ccd_simulator"
    else:
        simulador = "mount_simulator"
    f.write(f"  {simulador}_{i}:\n")
    f.write( "    image: juanmimm/ubuntu-indigo\n")
    f.write( "    ports:\n")
    f.write(f"      - 800{i}:800{i}\n")
    f.write(f"    command : indigo_server -p 800{i} indigo_{simulador}\n")

f.close()