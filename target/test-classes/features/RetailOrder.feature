@Test
Feature: Retail Order Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    @Regration1
  Scenario: Verify User can add an item to cart
    And User enter email 'Tamana200@gmail.com' and password 'Tamana@123'
    And User click on login button
    And User should be logged in into Account
    And User change the category to 'Smart Home'
    And User search for an item 'kasa outdoor smart plug'
    And User click on Search icon
    And User click on item
    And User select quantity '2'
    And User click add to Cart button
    Then the cart icon quantity should change to '2'
    Then user delete the item
  @Regration2
  Scenario: Verify User can place an order with Shipping address and payment Method on file​​​​​​​
    And User enter email 'Tamana300@gmail.com' and password 'Tamana@123'
    And User click on login button
    And User should be logged in into Account
    And User change the category to the 'Electronics'
    And User search for the item 'Apex Legends'
    And User click on the Search icon
    And User click on the item
    And User select the quantity '5'
    And User click add to the Cart button
    Then the cart icon quantity should be change to '5'
    And User click on Cart option
    And User click on Proceed to Checkout button
    And User click on Place Your Order
    Then a message should be displayed ‘Order Placed, Thanks
    

  #Note: For the below scenarios, you need to first have orders in place. At least one order must be present
  @Regration3
  Scenario: Verify User can cancel the order
    And User enter email 'Tamana300@gmail.com' and password 'Tamana@123'
    And User click on login button
    And User should be logged in into Account
    And User click on Orders section
    And User click on first order in list
    And User click on Cancel The Order button
    And User select the cancelation Reason "Bought wrong item"
    And User click on Cancel Order button
    Then a cancelation message should be displayed ‘Your Order Has Been Cancelled’
@Regration4
  Scenario: Verify User can Return the order
    And User enter email 'tamana.ziai786@gmail.com' and password 'Ziai@786'
    And User click on the login button
    And User should be logged in into Account
    And User change the category to 'Smart Home'
    And User search for an item 'kasa outdoor smart plug'
    And User click on Search icon
    And User click on item
    And User click add to Cart button
    And User click on Cart option
    And User click on Proceed to Checkout button
    And User click on Place Your Order
    And User click on Orders section
    And User click on Return Items button
    And User select the Return Reason "Item damaged"
    And User select the drop off service "FedEx"
    And User click on Return Order button
    Then a cancelation message should be displayed "Return was successful"
@Regration5
  Scenario: Verify User can write a review on order placed
    And User enter email 'Tamana300@gmail.com' and password 'Tamana@123'
    And User click on login button
    And User should be logged in into Account
    And User click on Orders section
    And User click on first order in list
    And User click on Review button
    And User write Review headline "headline value" and "review text"
    And User click Add your Review button
    Then a review message should be displayed "Your review was added successfully"