Feature: Regression test package for New Tour

  Scenario: User performs registration process
    Given User is in homepage
    When User selects "Register"
    And  User provides "UserName","Password","ConfirmPassword" details
    Then User is in registration confirmation page

    Scenario Outline:
      Given User is in registration confirmation page
      When  User select flights and provides "Type","Passengercount","Depfrom","onmonth","ondate","arrvingin","returningmonth","returningdt","ServiceClass","airlinepref"
      And User continues the form and selects depart flight and returnflight and continues
      And User provides "creditcardnumber","creditCardfname","cclname","ccmidname" and proceeds with purchase
      Then User is in confirmation page
      Examples: 


