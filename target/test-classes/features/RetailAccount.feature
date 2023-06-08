@Test
Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'Tamana200@gmail.com' and password 'Tamana@123'
    And User click on login button
    And User should be logged in into Account
    And User click on Account option

  Scenario: Verify User can update Profile Information
    And User update Name 'Tamana1' and Phone '9166964532'
    And User click on Update button
    Then user profile information should be updated

  Scenario: Verify User can add a payment method
    When User click on Account option
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 7867867867867866 | Tamanaziai     |              6 |           2023 |          123  |
    And User click on Add your card button
    Then message should be displayed 'Payment Method added successfully'

  Scenario: Verify User can edit Debit or Credit card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 7867867867867888 | Tamana ziai  |               11 |           2029 |        983 |
    And user click on Update Your Card button
    Then a message should be displayed 'Payment Method updated Successfully'

  Scenario: Verify User can remove Debit or Credit card
    And User click on remove option of card section
    Then payment details should be removed

  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country       | fullName     | phoneNumber | streetAddress       | apt |   city     | state      | zipCode |
      | United States | Tamana Ziai |  9166964531  | 10075 Bruceville Rd | 456  | Elk Grove | California |   95757 |
    And User click Add Your Address button
    Then a message should displayed 'Address Added Successfully'

  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And user eidt new address form with below information
      | country       | fullName   | phoneNumber | streetAddress         | apt    | city      | state      | zipCode |
      | United States | Tamanaa Ziai| 5714678931 | 8760 center parkway   |  f234      | woodbridge | Virginia |   95758 |
    And User click update Your Address button
    Then a message should be display 'Address Updated Successfully'

  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed