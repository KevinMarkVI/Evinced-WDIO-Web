Feature: Evinced commands

  Scenario: Basic evAnalyze flow
    Given I'm on "EVINCED_DEMO_SITE"
    When I run evAnalyze command
    Then I should have 6 issues found

  Scenario: Basic evStart-evStop flow
    Given I'm on "EVINCED_DEMO_SITE"
    When I run evStart command
    When I run evStop command
    Then I should have 6 issues found

