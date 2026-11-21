import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;

public class PetStoreRunnerTest {

    @Test
    void testPetStore() {
        Results results = Runner.path("classpath:pets")
                .parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
