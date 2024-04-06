public class EmailService {
    private EmailSender emailSender;

    public EmailService(EmailSender emailSender) {
        this.emailSender = emailSender;
    }

    public void sendWelcomeEmail(String recipient) {
        String message = "Benvenuto!";
        emailSender.sendEmail(recipient, message);
    }
}