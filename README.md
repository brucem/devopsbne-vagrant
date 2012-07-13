# Demo Vagrant setup for DevOps Brisbane

This setup will be used as a demo for the DevOps Brisbane July 2012 event
http://www.meetup.com/Devops-Brisbane/events/71093682/

It's a simple Vagrant setup that:
* uses the standard lucid32 basebox
* uses puppet to install apache
* uses 33.33.33.10 as the box IP address
* mounts ./application as /var/www/application using NFS
* should be availiable as http://33.33.33.10/application/

