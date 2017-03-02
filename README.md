# Gifter

Gifter is an event scheduling and gift recommendation app. It helps you keep track of the important people in your life, and makes finding the right gift for that one special person a breeze. Simply create a profile for a recipient, and then Gifter will recommend items to send their way when an occasion comes up!

## Deployment
This app is deployed on Heroku. [Check it out!](https://stark-anchorage-54987.herokuapp.com/)

## Build
This app uses Ruby on Rails 5.0.1. It utilizes Devise for auth and Stripe to handle payments.

#### Full list of technologies
* Ruby on Rails
* PostgreSQL
* Javascript/jQuery
* Materialize
* Sass
* HTML
* CSS

## Database Structure
![alt text](erd.pdf)



## Notes
- create traits table out of all possible combinations of each trait, and then assign the corresponding trait combo id to each person/each gift
- if I had a regression equation: try to find gifts with all the matching traits. Then remove the least significant trait, and find all gifts with the remaining matching traits. Remove the next least significant trait, and so on. Do this until the optimal gifts have been found.
- polymorphic relationship with traits
