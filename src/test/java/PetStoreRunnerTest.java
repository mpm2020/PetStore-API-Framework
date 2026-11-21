import com.intuit.karate.junit5.Karate;

public class PetStoreRunnerTest {

    @Karate.Test
    Karate testPetStore() {
        //return Karate.run("classpath:pets/create-pet-standalone.feature");
        //return Karate.run("classpath:pets/pets.feature");
        return Karate.run("classpath:pets");


    }
}
