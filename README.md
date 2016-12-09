# OpenSSH remote DOS
[![Docker Pulls](https://img.shields.io/docker/pulls/vulnerables/cve-2016-6515.svg?style=plastic)](https://hub.docker.com/r/vulnerables/cve-2016-6515/)

Before 7.3 OpenSSH does not limit password lengths for password authentication, which allows remote attackers to cause a denial of service (crypt CPU consumption) via a long string. This bug resides in ```auth-passwd.c``` in ```auth_password``` function.

Attackers can exploit this issue to cause the application to enter an infinite loop and consume excessive CPU resources, resulting in denial-of-service conditions. 

### Vulnerable environment

To setup up an vulnerable invironment you just use the docker image

    docker run --rm -it -p 8022:22 vulnerables/cve-2016-6515

### Exploit

To use this exploit you will need ```nodejs``` installed, clone this repo and install the dependencies with:

    npm install

Then you can run the exploit

    ./exploit.js -h HOST -p PORT -u USER

If you run the image with the command described above, you can exploit it with

    ./exploit.js -h localhost -p 8022 -u root -i 100

### Patch

Update OpenSSH to 7.3

### Vulnerable Systems

 * Ubuntu 16.04 LTS (If running 7.2)
 * OpenSSH OpenSSH 7.2p2
 * OpenSSH OpenSSH 7.2
 * IBM Vios 2.2.1 4
 * IBM Vios 2.2 
 * IBM Vios 2.2.4.0
 * IBM Vios 2.2.3.50
 * IBM Vios 2.2.2.5
 * IBM Vios 2.2.2.0
 * IBM Vios 2.2.1.3
 * IBM Vios 2.2.1.1
 * IBM Vios 2.2.0.13
 * IBM Vios 2.2.0.11
 * IBM OpenSSH for GPFS 3.5
 * IBM Aix 7.2
 * IBM AIX 7.1
 * IBM AIX 6.1
 * IBM AIX 5.3

### Credits

This flaw was found by Tomas Kuthan (Oracle), Andres Rojas and Javier Nieto.

### Disclaimer

This or previous program is for Educational purpose ONLY. Do not use it without permission. The usual disclaimer applies, especially the fact that me (opsxcq) is not liable for any damages caused by direct or indirect use of the information or functionality provided by these programs. The author or any Internet provider bears NO responsibility for content or misuse of these programs or any derivatives thereof. By using these programs you accept the fact that any damage (dataloss, system crash, system compromise, etc.) caused by the use of these programs is not opsxcq's responsibility.
