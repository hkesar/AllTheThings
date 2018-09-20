Feature: Adopting puppies
  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

  Background:
    Given I am on puppy adoption site


  Scenario Outline: Adopting one puppy with examples
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter '<name>' in the name field
    And I enter '<address>' in the address field
    And I enter '<email>' in the email field
    And I select '<pay_type>' from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"

Examples:
    | name  | address | email | pay_type  |
    | Cheezy  |  123 street 1 |  cheeze@cheezy.com  |  Check  |
    | Joe | 456 street 2  | joe@cheezy.com | Credit card  |
    | Jared | 789 street 3  | jared@cheezy.com | Purchase order  |


  Scenario: Adopting one puppy
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter Cheezy in the name field
    And I enter 123 Main Street in the address field
    And I enter cheezy@example.com in the email field
    And I select Check from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"


  Scenario: Adopting one puppy using a table
    When I click the first View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I complete the adoption with
    | name | address | email | pay_type  |
    | Cheezy  |  123 Main Street | email@email.com | Check |
    Then I should see "Thank you for adopting a puppy!"



  Scenario: Adopting two puppies
    When I click the first View Details button
    And I click the Adopt Me button
    And I click Adopt Another Puppy button
    And I click the second View Details button
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I enter 'Cheezy' in the name field
    And I enter '123 Main Street' in the address field
    And I enter 'cheezy@example.com' in the email field
    And I select 'Check' from the pay with dropdown
    And I click the Place Order button
    Then I should see "Thank you for adopting a puppy!"


    Scenario: Verify the shopping cart with one puppy
      When I click the View Details button for "Brook"
      And I click the Adopt Me button
      Then I should see "Brook" as the name for line item 1
      And I should see "$34.95" as the subtotal for line item 1
      And I should see "$34.95" as the cart total


  Scenario: Verify the shopping cart with two puppy
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click Adopt Another Puppy button
    #And I click the second View Details button
    And I click the View Details button for "Hanna"
    And I click the Adopt Me button
    Then I should see "Brook" as the name for line item 1
    And I should see "$34.95" as the subtotal for line item 1
    And I should see "Hanna" as the name for line item 2
    And I should see "$22.99" as the subtotal for line item 2
    And I should see "$57.94" as the cart total


  Scenario: Thank you message should be displayed
    When I complete the adoption of a puppy
    Then I should see "Thank you for adopting a puppy!"

    Scenario: Adopting a puppy using partial default data
      When I click the View Details button for "Brook"
      And I click the Adopt Me button
      And I click the Complete the Adoption button
      And I complete the adoption using a Credit card
      Then I should see "Thank you for adopting a puppy!"

  Scenario: Adopting a puppy using all default data
    When I click the View Details button for "Brook"
    And I click the Adopt Me button
    And I click the Complete the Adoption button
    And I complete the adoption
    Then I should see "Thank you for adopting a puppy!"

  Scenario: Name is a required field
    When I checkout leaving name field blank
    Then I should see the error message "Name can't be blank"

  Scenario: Processing a puppy
    When I click button "Process Puppy"
    Then I should be able to see a "Thank you message"


