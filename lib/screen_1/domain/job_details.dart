class JobDetails {
  String title;
  String serviceType;
  String salary;
  String timing;
  String address;
  String transportationExpense;
  String careProviderName;
  bool isFav;
  String daysLeft;
  String imagePath;

  JobDetails( {
      required this.title,
      required this.serviceType,
      required this.salary,
      required this.timing,
      required this.address,
      required this.transportationExpense,
      required this.careProviderName,
      required this.daysLeft,
      required this.imagePath,
      this.isFav = false});
}
