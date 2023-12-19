Feature: Serenity Rest QE 13
  @Latihan
  Scenario Outline: Get list user with valid param page
    Given Get list users with page <page>
    When Send request get list users
    Then Status code should be 200
    Examples:
      |page|
      |1   |
      |2   |
  @Latihan
  Scenario: Post create user with valid json
    Given Post Create user with valid json "CreateUser.json"
    When Send request post create user
    Then Status code should be 201