version: '3.4'

services:
   Database:
     image: Postgres
     restart: always
     volume: 
        - ~/postgressql:/var/lib/postgresql
     ports:
       - "2000:3000"
     environment:
       POSTGRES_PASSWORD: docker@123
    
    Webapp:
      ruby:
        depends on:
          - Database
        image: ruby:2.5
        ports:
          - "3000:3000"
        restart: always
        
        
        

     
