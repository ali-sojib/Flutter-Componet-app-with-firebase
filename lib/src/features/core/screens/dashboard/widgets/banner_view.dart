import '../../../../../constant/consts.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: sCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: sDashboardCardPadding, vertical: sDashboardCardPadding + 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: Icon(Icons.book)),
                    Flexible(child: Image(image: AssetImage(sBannerImage1))),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  sDashboardBannerTitle1,
                  style: textTheme.headline4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(sDashboardBannerSubTitle, style: textTheme.bodyText2, maxLines: 1, overflow: TextOverflow.ellipsis),
              ],
            ), // Column
          ),
        ),
        const SizedBox(width: sDashboardPadding),
        Expanded(
          child: Column(
            children: [
              //card
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: sCardBgColor),
                padding: const EdgeInsets.symmetric(horizontal: sDashboardCardPadding, vertical: sDashboardCardPadding - 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(child: Icon(Icons.book)),
                        Flexible(child: Image(image: AssetImage(sBannerImage2))),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Text(
                      sDashboardBannerTitle2,
                      style: textTheme.headline4,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(sDashboardBannerSubTitle, style: textTheme.bodyText2, maxLines: 1, overflow: TextOverflow.ellipsis),
                  ],
                ), // Column
              ),
              //button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: () {}, child: Text(sDashboardButton)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
