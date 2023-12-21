Feature: Serenity Rest QE 13
  @Latihan
  Scenario Outline: Get list user with valid param page
    Given Get list users with page <page>
    When Send request get list users
    Then Status code should be 200
    And Response body page should be <page>
    And Validate get list users json schema "ListUsersSchema.json"
    Examples:
      |page|
      |1   |
      |2   |
  @Latihan
  Scenario: Post create user with valid json
    Given Post Create user with valid json "CreateUser.json"
    When Send request post create user
    Then Status code should be 201
    And Response body name was "Wisnu Munawar" and job was "QA Engineer"
    And Validate create user json schema "CreateUserSchema.json"
  @Latihan
  Scenario Outline: Update user with valid id and json
    Given Update user with valid id <id> and json "<json>"
    When Send request update user
    Then Status code should be 200
    And Response body name was "<name>" and job was "<job>"
  Examples:
    |id|json            |name                 |job                |
    |1 |UpdateUser.json |Wisnu Munawar Edit   |QA Engineer Edit   |
    |2 |UpdateUser2.json|Wisnu Munawar Edit 2 |QA Engineer Edit 2 |
  @Latihan
  Scenario Outline: Delete user with valid id
    Given Delete user with valid id <id>
    When Send request delete user
    Then Status code should be 204
  Examples:
    |id|
    |1 |
    |2 |