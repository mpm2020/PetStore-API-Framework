Feature: CREAR MASCOTA EN PETSTORE

  Background:
    * url baseUrl

    Scenario:  crear una mascota con datos válidos
      Given path 'pet'
      And header Accept = 'application/json'
      And request
        """
        {
          "id": 15,
          "name":"Firulais",
          "category": {"id":1, "name":"Dogs"},
          "photoUrls":["string"],
          "tags":[{"id":1,"name":"string"}],
          "status":"available"
        }
        """
      When method post
      Then status 200
      * def petId = response.id