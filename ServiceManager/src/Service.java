public class Service {
    private DataService dataService;

    public Service(DataService dataService) {
        this.dataService = dataService;
    }

    public int calculateSum() {
        int[] data = dataService.retrieveData();
        int sum = 0;
        for (int num : data) {
            sum += num;
        }
        return sum;
    }
}