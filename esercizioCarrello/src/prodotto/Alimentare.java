package prodotto;

import java.awt.desktop.SystemSleepEvent;
import java.util.Date;

public class Alimentare extends Prodotto {

    Date dataDiScadenza;

    public Alimentare(String nome, double prezzo, Date dataDiScadenza) throws ScadenzaProdottoException {
        super(nome, prezzo);
        if (dataDiScadenza.getTime() < System.currentTimeMillis()) {
            throw new ScadenzaProdottoException("la data di scadenza non è valida");
        }
        this.dataDiScadenza = dataDiScadenza;
    }

    public Date getDataDiScadenza() {
        return dataDiScadenza;
    }

    public void setDataDiScadenza(Date dataDiScadenza) {
        this.dataDiScadenza = dataDiScadenza;
    }
}
