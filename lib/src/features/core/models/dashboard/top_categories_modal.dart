import '../../../../constant/consts.dart';

class DashboardTopCategoriesModel {
  final String title;
  final String imgLink;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopCategoriesModel(this.title, this.imgLink, this.heading, this.subHeading, this.onPress);

  static List<DashboardTopCategoriesModel> list = [
    DashboardTopCategoriesModel("Best Famous Quotes Ever", sTopQuotesImage1, "Love live", "Werner Erhard thought about life ", null),
    DashboardTopCategoriesModel("Quotes Only For Your", sTopQuotesImage2, "Love live", "Werner Erhard thought about life ", null),
  ];
}
