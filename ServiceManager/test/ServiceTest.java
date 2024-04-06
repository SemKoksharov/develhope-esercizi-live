import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class ServiceTest {

    @Test
    public void testCalculateSum() {

        // Creazione dello stub per Data.DataService
        DataService stubDataService = new DataServiceStub();

        // Creazione dell'oggetto MyService con lo stub Data.DataService
        Service myService = new Service(stubDataService);

        // Chiamata al metodo da testare
        int result = myService.calculateSum();

        // Verifica del risultato del test
        assertEquals(15, result); // Si aspetta che la somma sia 15
    }
}