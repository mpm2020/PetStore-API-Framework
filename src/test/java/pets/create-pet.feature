@ignore
Feature: CREAR MASCOTA EN PETSTORE

  Background:
    * url baseUrl

  Scenario: Crear una mascota con datos válidos
    * print 'Argumento recibido:', __arg
    Given path 'pet'
    And header Accept = 'application/json'
    And request __arg
    When method post
    Then status 200
    * def petId = response.id