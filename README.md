# CAS735 Lab 2: Message-Driven Communication With RabbitMQ

* Author: Chris Schankula, Sébastien Mosser
* Version: 2023.09

**DRAFT**

## Learning Objectives
- Learn how to set up RabbitMQ
- Use RabbitMQ's built-in web interface to send a message to a basic application
- Learn how to send a message from within a Spring service
- Learn how to transfer complex objects through a RabbitMQ queue
- Use RabbitMQ to communicate with multiple clients


## Setup instructions

For this lab, you need to:

1. Click on "Use this template" to create your own repository from this template
2. Click the green "Code" button on the resulting repo, and create a Codespace
3. Wait for the Codespace to be created. This may take about 5 minutes to complete
   the first time. I recommend you do this before the lab!
4. Remember to commit and push your code at the end of the lab! I recommend pushing even
   more often than that.
6. Once you're done the lab, and you've committed all changes, delete the Codespace from 
   [your codespaces page](https://github.com/codespaces), to save your gb-months of storage space.
   You can recreate the Codespace at any point. If you have registered for the student plan, you get
   20 gb-months of space per month, so in general, you are safe as long as the sum of the size of all 
   your stored Codespaces at any given moment is under 20gb.

## Lab Instructions

### Step #1: Start RabbitMQ

1. Inside your Codespace, start the RabbitMQ service using `sudo service rabbitmq-server start`.

2. Click "Ports", and open the RabbitMQ service running on port 15672 by clicking the globe icon that comes up when you mouse over the service.<br>
  <img width="690" alt="image" src="https://github.com/CAS735-F23/CAS735-Lab2/assets/12722104/860a95a3-eb7d-4c6a-b7ad-b91ff2e90096">

4. Log into the RabbitMQ admin panel by using the user "guest" and password "guest".<br>
   <img width="324" alt="image" src="https://github.com/CAS735-F23/CAS735-Lab2/assets/12722104/93f3f9a8-0f10-4745-96cd-a8e40f9da35e">


### Step #2: Write a Fire'n Forget service

- Write a service (spring?) that listen to a channel and print the received message on stdout

- Send a message to that channel using the Rabbit MQ web interface

### Step #3: Write a client

- Write a client code that sends a message to the previous channel

- use it to read a message from stdin and send it to the other system that'll print it out on the other side.

### Step #4: Transfer complex object 

- Update your sender and receiver so that they exchange JSON data structures

### Step #5: Multiple targets

- Leverage rabbitMQ capacity to have multiple workers listening to the same channel 
