import 'package:flutter/material.dart';

class DashboardCategoriesModal {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModal(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoriesModal> list = [
    DashboardCategoriesModal("L", "Life", "10 Quotes", null),
    DashboardCategoriesModal("L", "Love", "11 Quotes", null),
    DashboardCategoriesModal("T", "Time", "8 Quotes", null),
    DashboardCategoriesModal("V", "Value", "20 Quotes", null),
    DashboardCategoriesModal("T", "Truth", "100 Quotes", null),
  ];
}
