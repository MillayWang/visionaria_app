Feature: Enable user notifications
  As a social media user
  In order to stay up to date with what people think about my posts
  I want to be able to get user notifications for when someone likes or comments on my posts
  
  Background:
    Given   I am on the homepage
    And     the following users exist
    
      | username      | password          | email             |
      | dodobird      | dodosrule         | dodo@example.com  |
      | edasaur       | dinosaursarecool  | dino@example.com  |
     
    And     the following tagged posts exist
      
      | username  | user_id     | content       | tag             | category                        | public    |
      | dodobird  | 1           | "comments2"   | Challenge       | Quality Education               | true      |
  
    And     I am signed in with username "dodobird", email "dodo@example.com" and password "dodosrule"

  Scenario: Get notification for a comment on my post
    Given   pending
    When    someone comments on my post
    Then    I should see a notification for it on my navigation bar
    
  Scenario: Get notification for a like on my post
    Given   pending
    When    someone likes my post
    Then    I should see a notification for it on my navigation bar