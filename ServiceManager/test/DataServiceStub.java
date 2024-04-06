public class DataServiceStub implements DataService {
    @Override
    public int[] retrieveData() {
        // Fornisce dati di risposta predefiniti per il test
        return new int[]{1, 2, 3, 4, 5};
    }
}