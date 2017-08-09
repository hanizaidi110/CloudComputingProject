This cloud project is primarily divided in three parts

Task 1 

1.1) Create an amazon aws educate account
Prepare and launch an aws instance with the following configuration:
+ Paravirtualized
+ Instance Store backed
+ SSH accessible 
Use the Amazon CLI to create the instance and all required resources (keypair, security group). 
1.2)Prepare and launch an openstack VM
Configure security groups, keypairs and floating IPs
Create an Instance with the following configuration values:
+ ubunutu source image
+ keypair: a key to make the instance reachable by ssh
+ Open port 22 and ICMP traffic
Create an openrc file and load the parameters in your environment
1.3) Performance Benchmarks
Benchmark AWS, Openstack and local machine in two different timings using the following tools:
+ FIO - for random read and write access to virtualized disk
+ LINPACK - CPU benchmark for computing resources
+ Memsweep - measures the time to write and clean heap memory
+ dd - for sequential read and write access to virtualized

Task 2

2.1) Cloud Benchmark
Benchmark these following cloud API operations using Rally:
+ Querying the list of your VMs
+ Creation time of VMs

2.2)Introducing Heat Orchestration engine
Launch a single VM within OpenStack project using HOT file
Instantiate a Heat stack using server.yml template
Test the VM by connecting via SSH

2.3) Advanced Heat Template
Create a yml file/template that creates the following resources
+ One network, one underlying subnet, one router connecting the probate network with public tu-internal network
+ One frontend server: 
  - Open port 80 and 22 
  - Connect the server to the new subnet
  - Associate a floating IP
+ Two equal backend servers:
  - Instantiate the server using yml file as a nested stack using Heat's Resource Group feature
  - Connect the servers to the new subnet
  - No outside traffic should be allowed

Task 3
Use the virtual infrastructure created by the server-landscape.yml file in task to host services running in the Docker containers managed by Docker swarm.

3.1) Prepare Docker Images
Create the create-stack.sh file and use it to instantiate the Heat template. All VMs from task 2 will run an updated version of Docker
Create two docker files for frontend and backend servers with the following properties:
+ must be based on the official nginx container image
+ exposes port 80
+ define a volume named /hypervisor_etc
+ nginx service should run on both servers
Test nginx services using curl command
Upload working containers to Dockerhub

3.2) Prepare the Docker swarm
Create and execute the init-swarm.sh script for proper docker swarm operations

3.3) Prepare the Docker stacks
Create docker-compose.yml files for both frontend and backend servers with the following requirements:
+ Frontend server
 - Map the container port 80 to port 80 of the VM
 - The service must be replicated two-fold and the containers must automatically restart upon faliure
+ Backend server
 - Map the container port 80 to port 8000 of the VM
 - The service must be replicated five-fold and the containers must automatically restart upon faliure

3.4) Launch the Docker stacks 



