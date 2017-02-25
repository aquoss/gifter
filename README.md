# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Notes
- create traits table out of all possible combinations of each trait, and then assign the corresponding trait combo id to each person/each gift
- if I had a regression equation: try to find gifts with all the matching traits. Then remove the least significant trait, and find all gifts with the remaining matching traits. Remove the next least significant trait, and so on. Do this until the optimal gifts have been found.
- polymorphic relationship with traits
