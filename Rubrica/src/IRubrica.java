public interface IRubrica {
    public void aggiungiContatto(String nome, String cognome, String numero, String prefisso) throws Exception;
    public void aggiungiContatto(String nome, String cognome, String numero, String prefisso, String via, String citta, String cap, String provincia) throws Exception;
    public void rimuoviContatto(String idContatto);
    public void cercaContattoPerNome(String nome);
    public void cercaContattoPerCognome(String cognome);
    public void cercaContattoPerNumero(String numero);
    public void visualizzaRubrica();
    public void cercaContatto(String input);
    public void visualizzaSoloContattiEstesi();
    public int size();
}
