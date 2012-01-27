#START:cuke_feature
Feature: Add users to project
  In order to make this program even minimally useable
  Pretty much everybody on the planet
  wants to be able to add users to a project
  #END:cuke_feature


  #START:cuke_background
  Background:
    Given a project named "Conquer The World"
    And the following users
      | login| email            | password| password_confirmation|
      | alpha| alpha@example.com| alpha1  | alpha1               |
      | beta | beta@example.com | beta12  | beta12               |
    #END:cuke_background

  #START:cuke_scenario_one
  Scenario: See user display on edit page
    Given that user "alpha" is a member of the project
    When I visit the edit page for the project
    Then I should see 2 checkboxes
    And the "alpha" checkbox should be checked 
    And the "beta" checkbox should not be checked
  #END:cuke_scenario_one

  #START:cuke_scenario_two
  Scenario: See users in project edit
    Given I am on the edit page for "Conquer The World"
    When I check "alpha"
    And I press "Update"
    Then I am taken to the show page for "Conquer The World"
    And I should see "alpha@example.com"
    And I should not see "beta@example.com"
  #END:cuke_scenario_two


