# Django REST Template

## Prerequites

- Docker
- Docker Compose
- Python3

## Installation

- Run dev-setup.sh to create virtual environment and install dependencies:

  ` chmod +x dev-setup.sh && ./dev-setup.sh`

## Run Locally

- Run with docker-compose:  
  `docker-compose -f docker-compose-dev.yaml up -d`

## Configuration

- Create Superuser  
  `docker exec -it backend python manage.py createsuperuser`

- Migrate Database  
  `docker exec -it backend python manage.py migrate`

## Monitor

- Monitor backend console    
  `docker logs --follow backend`
