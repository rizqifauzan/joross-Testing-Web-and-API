Feature: Test Automation Web Demo Blaze Feature

  @web
  Scenario: Test web sign up normal
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Sign up
    When user input sign up username and password with valid data
    And user click sign up button
    Then Sign up successfully and display message "Sign up successful."

  @web
  Scenario: Test web sign up for user already exist
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Sign up
    When user input sign up username "joross123"
    And user input sign up password "Test123"
    And user click sign up button
    Then Sign up successfully and display message "This user already exist."

  @web
  Scenario: Test web sign up with empty username
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Sign up
    And user input sign up password "Test123!!"
    And user click sign up button
    Then Sign up successfully and display message "Please fill out Username and Password."

  @web
  Scenario: Test web sign up with empty password
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Sign up
    When user input sign up username "joross123"
    And user click sign up button
    Then Sign up successfully and display message "Please fill out Username and Password."

  @web
  Scenario: Test web sign up with empty username and password
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Sign up
    When user input sign up username ""
    And user click sign up button
    Then Sign up successfully and display message "Please fill out Username and Password."

  @web
  Scenario: Test web login normal
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Log in
    When user input username "joross123"
    And user input password "Test123"
    And user click login button
    Then User login successfully with welcome message "Welcome joross123"

  @web
  Scenario: Test web logout
    Given user go to Product Store page "https://www.demoblaze.com/"
    And User has been logged in
    When User click menu Log out
    Then User Log out Successfully and display menu "Sign up"

  @web
  Scenario: Test web Send Message in Contact Menu case Normal
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu Contact
    When user input Contact Email "ross@mail.com"
    And user input Contact Name "Jonathan Ross"
    And user input Message "How i can order item ?"
    And user click button Send Message
    Then Send Message successfully and display message "Thanks for the message!!"

  @web
  Scenario: Test web Play Video in About us Menu
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user click menu About Us
    When user click button video
    Then Video played successfully

  @web
  Scenario: Test web Place Order in Cart Menu case Normal
    Given user go to Product Store page "https://www.demoblaze.com/"
    And user already ordered Item
    And user click menu Cart
    When user click button Place Order
    And user input Name "Jonathan Ross"
    And user input Country "Indonesia"
    And user input City "Jakarta"
    And user input Credit Card "55555"
    And user input Month "01"
    And user input Year "2025"
    And user click button Purchase
    Then Order process successfully

  @web
  Scenario: Test web order Product Normal case Normal
    Given user go to Product Store page "https://www.demoblaze.com/"
    When user order product item "Samsung galaxy s6"
    And User click Add to chart
    Then user should be able see message "Product added"
    And user should be able see product ordered in the Cart Page
