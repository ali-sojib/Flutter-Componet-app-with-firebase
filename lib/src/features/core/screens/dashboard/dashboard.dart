import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/widgets/appbar_view.dart';
import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/widgets/banner_view.dart';
import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/widgets/categories_view.dart';
import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/widgets/searchbox_view.dart';
import 'package:flutter_app_with_firebase/src/features/core/screens/dashboard/widgets/top_categories_view.dart';

import '../../../../constant/consts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(sDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(sDashboardTitle, style: textTheme.bodyText2),
              Text(sDashboardHeading, style: textTheme.headline2),
              const SizedBox(height: sDashboardPadding),

              //search box
              DashboardSearchBox(textTheme: textTheme),
              const SizedBox(height: sDashboardPadding),

              //Categories
              DashboardCategories(textTheme: textTheme),
              const SizedBox(height: sDashboardPadding),

              //Banner
              DashboardBanner(textTheme: textTheme),
              const SizedBox(height: sDashboardPadding),

              //categories
              Text(sDashboardTopQuotes, style: textTheme.headline6!.apply(fontSizeFactor: 1.2)),
              const SizedBox(height: sDashboardPadding),
              DashboardTopCategories(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}
