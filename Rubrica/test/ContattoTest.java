import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ContattoTest {

    @Test
    void verifyPrefisso() {
        Contatto contatto = new Contatto("Giada", "Fiorito", "55555555", "+39");
        boolean ris = contatto.verifyPrefisso("+39");
        assertTrue(ris);
    }
}