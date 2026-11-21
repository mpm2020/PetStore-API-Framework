Feature: MASCOTAS

    Background:
        * url baseUrl

   Scenario: Obtener lista completa de mascotas
     Given path 'pet','findByStatus'
     And param status = 'available'
     When method get
     Then status 200

   Scenario: Llamar otra feature y luego GET
     * def created = call read('classpath:pets/create-pet.feature'){ name:'Rocky', id: 18, category:{id:1, name:'Dogs'}, photoUrls:['string'], tags:[{id:1,name:'string'}], status:'available' }
     Given path 'pet', created.petId
     When method get
     Then status 200