Feature: Create Categories
  As an author
  In order to more organize my thoughts
  I want to create categories for my blog
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: 
    Given I am on the new categories page
    
    When I fill in "category_name" with "Philosophy"
    And I fill in "category_keywords" with "Time_waste"
    And I fill in "category_permalink" with "Philosophy_Blogs"
    And I fill in "category_description" with "Description"
    And I press "Save"
    Then I should see "Philosophy"
    Then I should see "Time_Waste"
    Then I should see "Philosophy_Blogs"
    Then I should see "Description"
    
    Then I follow "Philosophy"
    
    When I fill in "category_name" with "Video_Games"
    And I fill in "category_keywords" with "League_of_Legends"
    And I fill in "category_permalink" with "Ez"
    And I fill in "category_description" with "#1_hobby"
    And I press "Save"
    Then I should see "Video_Games"
    Then I should see "League_of_Legends"
    Then I should see "Ez"
    Then I should see "#1_hobby"