# Hydroponic Garden IOT project

### What is this repository for? ###

* Rails application that displays information about garden health.  Simple rails app to consume db shared by other repo which posts sensor data to db directly from a raspberry pi.
* Version 1.0

### Environment ###

* ruby 2.2.3
* rails 4.2.1
* docker

### How do I get set up? ###

* Local development would be like any other rails project.
  ```

  bundle install #install dependencies
  rails s # start local server
  ```
* docker deployment
  * docker-compose build
  * docker-compose up