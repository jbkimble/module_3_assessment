# Module 3 Assessment

In this assessment you will:

* Demonstrate mastery of all parts of the Rails stack
* Demonstrate mastery of Ruby throughout the process
* Write tests for the added features

## Areas of Knowledge

Areas to be tested is explained in the [Assessment](https://github.com/turingschool/lesson_plans/blob/master/ruby_03-professional_rails_applications/assessment.md#areas-of-knowledge)

## Expectations

Criteria is explained in the [Assessment](https://github.com/turingschool/lesson_plans/blob/master/ruby_03-professional_rails_applications/assessment.md#expectations)


## Preparation

You should have worked through the [Setup](https://github.com/turingschool/lesson_plans/blob/master/ruby_03-professional_rails_applications/assessment.md#setup) in the Assessment doc.

## Assessment Challenges

Work through the following challenges and get as far as you can in the allotted time. The first section is easier so it should not take half the time if you plan on finishing both.

### 1. Create an API

For this challenge clone [Storedom](https://github.com/turingschool-examples/storedom).

We need an API for the application that can both read and write data. Start by focusing on functionality for items. All of this should happen in a dedicated, versioned controller.

When I send a GET request to `/api/v1/items`
I receive a 200 JSON response containing all items
And each item has an id, name, description, and image_url but not the created_at or updated_at

When I send a GET request to `/api/v1/items/1`
I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at

When I send a DELETE request to `/api/v1/items/1`
I receive a 204 JSON response if the record is successfully deleted

When I send a POST request to `/api/v1/items` with a name, description, and image_url
I receive a 201 JSON  response if the record is successfully created
And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at

* Verify that your API works using Postman or curl

### 2. Consume 3rd party API

For this challenge you'll implement a lookup feature for storedom. We want to be able to search and return Best Buy locations in our area.

We need to consume data from the BestBuy Api. Start by checking out the [BestBuy developer documentation](https://developer.bestbuy.com/). You should have received a Best Buy API key from an instructor.

Once you're done getting your key, use the [Stores documentation](http://bestbuyapis.github.io/api-documentation/#stores-api) to meet the requirements below.

```
As a user
When I visit "/"
And I fill in a search box with "80202" and click "search"
Then my current path should be "/search" (ignoring params)
And I should see stores within 25 miles of 80202
And I should see a message that says "16 Total Stores"
And I should see exactly 15 results
And I should see the long name, city, distance, phone number and store type for each of the 15 results

The name will be a link in the next story:

As a user
After I have searched a zip code for stores
When I click the name of a store
Then my current path should be "/stores/:store_id"
I should see the store name, store type and address with city, state and zip
I should see an unordered list of the store hours in the following format:
  * Mon: 10am-9pm
  * Tue: 10am-9pm
  * Wed: 10am-9pm
  * Thurs: 10am-9pm
  * Fri: 10am-9pm
  * Sat: 10am-9pm
  * Sun: 11am-7pm
```
* It's not necessary, or even advised, that you store anything in a database from the Best Buy API.
* Display the returned stores and their attributes returned from the API query in a logical and intuitive HTML layout. (This does not need to be styled).

## Evaluation Criteria

The criteria is located in the [Assessment](https://github.com/turingschool/lesson_plans/blob/master/ruby_03-professional_rails_applications/assessment.md#evaluation-criteria) file.

## Instructor Notes

There is another set of user stories for the Best Buy API in an old commit. Not exactly sure the best way to keep this ongoing. Possibly just another file.
