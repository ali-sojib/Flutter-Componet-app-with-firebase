import '../../../../../constant/consts.dart';
import '../../../models/dashboard/categories_modal.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModal.list;

    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: sDarkColor),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: textTheme.headline6?.apply(color: Colors.white),
                    ),
                  ), // Center
                ), // Container
                const SizedBox(width: 5),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading, style: textTheme.headline6, overflow: TextOverflow.ellipsis),
                      Text(list[index].subHeading, style: textTheme.bodyText2, overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 50,
        //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: sDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: textTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ), // Center
        //         ), // Container
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis), Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 50,
        //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: sDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: textTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ), // Center
        //         ), // Container
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis), Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 50,
        //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: sDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: textTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ), // Center
        //         ), // Container
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis), Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 50,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 50,
        //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: sDarkColor),
        //           child: Center(
        //             child: Text(
        //               "JS",
        //               style: textTheme.headline6?.apply(color: Colors.white),
        //             ),
        //           ), // Center
        //         ), // Container
        //         const SizedBox(width: 5),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis), Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
