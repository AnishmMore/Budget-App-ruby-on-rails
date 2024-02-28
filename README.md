# Budget-App-ruby-on-rails

## Description
Budget-App is a Ruby on Rails mobile web application designed for managing your budget. Users can register and log in to keep their data private, introduce new transactions associated with categories, and track the money spent on each category.

This project utilizes Docker to containerize the Ruby on Rails application and Kubernetes for orchestration. Below are the steps to Dockerize the application and deploy it using Kubernetes.

## Getting Started
### Prerequisites
- You need to have Git installed on your machine.
- Install Docker CLI or Docker Desktop.

### Setup
1. Clone this repository:
   ```bash
   $ git clone https://github.com/Surajkumar98012/Budget-App
   $ cd Budget-App
   ```

2. To start the server:
   ```bash
   $ docker-compose up --build
   ```

3. Listing Existing Routes:
   You can now visit http://localhost:3000 to view your new website!

4. For deploying a PostgreSQL pod on Kubernetes using StatefulSet:
   ```bash
   $ kubectl apply -f k8s/
   ```

## Built With 🛠️
This project is built with:
- Ruby
- Ruby on Rails

## Authors
- **Evans Sitibekiso**
  - GitHub: [@evans22j](https://github.com/evans22j)

## Contributor
- **Suraj Kumar**
  - GitHub: [@Suraj kumar](https://github.com/Surajkumar98012)
- **Anish More**
   - Github: [@Anish More](https://github.com/AnishmMore)

## Show Your Support
Give a ⭐️ if you like this project!

## Acknowledgments
Credit to Gregoire Vella on Behance, the author of the original design guidelines.

## 📝 License
This project is licensed under the MIT License.
