import org.junit.jupiter.api.Test;

import static org.mockito.Mockito.*;


public class EmailServiceTest {

    @Test
    public void testSendWelcomeEmail() {
        // Creazione di un mock per Email.EmailSender
        EmailSender mockEmailSender = mock(EmailSender.class);

        // Creazione di un oggetto Email.EmailService con il mock Email.EmailSender
        EmailService emailService = new EmailService(mockEmailSender);

        // Chiamata al metodo da testare
        emailService.sendWelcomeEmail("user@example.com");

        // Verifica che il metodo sendEmail del mock sia stato chiamato con i parametri corretti
        verify(mockEmailSender).sendEmail("user@example.com", "Benvenuto!");
    }
}