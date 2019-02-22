
## Customer Subscriptions

This project creates a table of users with name, email and products that they have subscribed to.  The user should be able to display all the users as well as search by name or email.

##


## API
Base URL /api/v1/customers

```ruby
#/api/v1/customers
#Request Type:  GET
#Successful Response Code: 200
#Unsuccessful Response Code: 4xx
#Content: Array containing objects (Example)
 {
    id: 41,
    email: "chriscrooks@bradtke.net",
    city: "North Shaeborough",
    state: "Oregon",
    country: "Albania",
    created_at: "2019-02-18T20:25:56.359Z",
    updated_at: "2019-02-18T20:25:56.359Z",
    subscribed_at: "2018-11-14 20:14:03.966813",
    billing_type: "Yearly",
    platform: {
        id: 41,
        platform: "Xbox",
        product: "The Carl Brutananadilewski Show",
        subscription_id: 41,
        created_at: "2019-02-18T20:25:56.369Z",
        updated_at: "2019-02-18T20:25:56.369Z"
    },
    product: "The Carl Brutananadilewski Show"
}
```

```ruby
#/api/v1/search?(:params) 
#Request Type:  GET
#Successful Response Code: 200
#Unsuccessful Response Code: 4xx
#Content: Array containing objects searched, searching searchs by email, billing_type and product (Example)
 {
    id: 41,
    email: "chriscrooks@bradtke.net",
    city: "North Shaeborough",
    state: "Oregon",
    country: "Albania",
    created_at: "2019-02-18T20:25:56.359Z",
    updated_at: "2019-02-18T20:25:56.359Z",
    subscribed_at: "2018-11-14 20:14:03.966813",
    billing_type: "Yearly",
    platform: {
        id: 41,
        platform: "Xbox",
        product: "The Carl Brutananadilewski Show",
        subscription_id: 41,
        created_at: "2019-02-18T20:25:56.369Z",
        updated_at: "2019-02-18T20:25:56.369Z"
    },
    product: "The Carl Brutananadilewski Show"
}
```


## How to use the page

Webpacker is used for the front end and Ruby on Rails for the backend. To run this, clone the repo, switch into the project folder and run the following commands:
```ruby
#install necessary gems
bundle install
```

```ruby
#create the database, migrate your tables over, add seed files
rails db:create && rails db:migrate && rails db:seed
```

```ruby
#to start the server
rails s
```

Then you can visit 
```
localhost:3000
```

and enjoy! :)

## Testability
* Currently only two tests running. One to test the #index and #search
```ruby
#Tests can re-run using RSpec just a simple command:
rspec
#From within the project folder
```

## Design Choices
* Kaminari was used for pagination due to better documentation than will_paginate.
* SearchBar should be made into it's own seperate component. I didn't have the chance to introduce Redux into the project.

## Neccessary adjustments
* More testing for the API.
* Move Searchbar into its own component.
* Introduce Redux.
* Styling needs to be adjusted more to match wireframes. 

## Front End Requirements:

**This project should:**
- [X] Be able to retrieve data from the API
- [X] Be able to display the retrieved data
- [X] Be able to search the retrieved data and return the desired result on the UI
- [X] Make use of React or HTML, CSS and vanilla JavaScript for UI elements
- [X] Make use of a CSS preprocessor (SCSS) for UI elements
- [X] Ensure that the views are responsive, starting mobile first

## Backend Requirements

**The Subscriptions Api Should:**
- [X] Consist of at least 3 ActiveRecord models
- [X] Contain 2 routes only,  1 for the home page (existing), and 1  subscriptions api end point
- [X] Return JSON format only using any serialization library of your choice
- [X] Support api pagination using any pagination gem or library of your choice.
- [X] Contains a seed file that imports the sample_data.json file into the relational sqlite database.
- [X] Has at least one test for the api endpoint
