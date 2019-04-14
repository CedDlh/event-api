# README

This API has been created in order to allow a ticket selling web app to display all the events on the platform with the number of ticket associated to the events. 

The API can also create a new ticket instance when a user choose to buy a ticket from an event and it will automatically decrement the number of tickets available in the event.

The program will only perform a create if the value of the ticket is the same as the event price and will also double check than the number of tickets available for the event is > 0. If those 2 criterias are not met, the application will through an error message to let the developer know than something wrong happened.

Through the Update method, you can also ensure the ticket status get updated from nil to paid thus allowing to filter and track the number of tickets that have been sold per event or as a total on the platfrom.
Once a ticket has been updated, the developer will be redirected to the show if the payment has gone through if a problem occur and the status can not get updated to paid, the application will raise an error message.

Informations 

* Its runs on the latest API version of ruby on rails (https://guides.rubyonrails.org/api_app.html) and to access to the API code you have to follow the following :
Model : event-api/app/models  
Controllers : event-api/app/controllers/api/v1  
DB Schema :  event-api/db/schema.rb
Routes : events-api/config/routes

To find the routes : run rails routes in the terminal.

* Configuration
Before starting to use the app, run a bundle install as some dependencies have been added on top of the standard RoR gems.

* Database creation and initialization
In order to simplify the use of the program, A database seed has been integrated in the program. feel free to run a rails db:migrate and rails db:seed in order to very easily generate a template DB of events. 

* How to run the test suite
A test file has been created with R-Spec and is available to use or test. It is located in the spec folder. In order to execute just a rspec comande in the terminal with the name of your file as follow => spec/controllers/events_controller_spec.rb

* API Version :
This version is a V1 and is currently beta. Severals optimization will be made within future versions including :
  * Possibility to buy severals tickets at once via a cart
  * Creation of a User protected Create and Update methods with a token so only registered user can perfom a paiement or      create a ticket
  * Better handling of payment with a payment adapter integrated within the logic of the app as a web service

