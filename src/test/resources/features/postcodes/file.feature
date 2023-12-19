Feature: File Post Codes
  @Latihan
  Scenario Outline: Looking up US locations
    When I look up a post code <Post Code> for country code <Country Code>
    Then the resulting location should be <Place Name> in <Country>
    Examples:
      | Post Code | Country Code | Country       | Place Name    |
      | 10000     | US           | United States | New York City |
      | 90210     | US           | United States | Beverly Hills |
      | 13001     | FR           | France        | Marseille 01  |
  @BukanLatihan
  Scenario Outline: XYZ Looking up US locations
    When I look up a post code <Post Code> for country code <Country Code>
    Then the resulting location should be <Place Name> in <Country>
    Examples:
      | Post Code | Country Code | Country       | Place Name    |
      | 13001     | FR           | France        | Marseille 01  |