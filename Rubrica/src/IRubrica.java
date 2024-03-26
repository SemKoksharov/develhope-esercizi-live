public interface IRubrica {
    public void aggiungiContatto(Contatto contatto) throws Exception;
    public void rimuoviContatto(Contatto contatto);
    public void cercaContattoPerNome(String nome);
    public void cercaContattoPerCognome(String cognome);
    public void cercaContattoPerNumero(String numero);
    public void visualizzaRubrica();
    public void cercaContatto(String input);
    public void visualizzaSoloContattiEstesi();
}
