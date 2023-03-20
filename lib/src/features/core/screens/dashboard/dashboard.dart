import '../../../../constant/consts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text(sAppName, style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: sCardBgColor),
            child: IconButton(
              onPressed: () {}, icon: Icon(Icons.person, color: Colors.black),
              // const Image(image: AssetImage(sUserProfileImage)),
            ),
          )
        ],
      ),
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
              Container(
                decoration: const BoxDecoration(border: Border(left: BorderSide(width: 4))),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(sDashboardSearch, style: textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5))),
                    const Icon(Icons.mic, size: 25),
                  ],
                ),
              ),
              const SizedBox(height: sDashboardPadding),

              //Categories
              SizedBox(
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
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
                                "JS",
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
                                Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis),
                                Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
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
                                "JS",
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
                                Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis),
                                Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
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
                                "JS",
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
                                Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis),
                                Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
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
                                "JS",
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
                                Text("Java Script", style: textTheme.headline6, overflow: TextOverflow.ellipsis),
                                Text("10 Lessons", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: sDashboardPadding),

              //Banner
              Row(
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
              ),
              const SizedBox(height: sDashboardPadding),

              //categories
              Text(sDashboardTopQuotes, style: textTheme.headline6!.apply(fontSizeFactor: 1.2)),
              const SizedBox(height: sDashboardPadding),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, right: 10),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: sCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                Flexible(
                                  child: Text(
                                    "Best Famous Quotes Ever",
                                    style: textTheme.headline4,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ), // Text
                                ), // Flexible
                                Flexible(child: Image(image: AssetImage(sTopQuotesImage1), height: 110)),
                              ]), // Row
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ), // ElevatedButton
                                  const SizedBox(width: sDashboardCardPadding),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("life lessons", style: textTheme.headline4, overflow: TextOverflow.ellipsis),
                                        Text("Werner Erhard thought about life ", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: sDashboardCardPadding),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, right: 10),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: sCardBgColor),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                Flexible(
                                  child: Text(
                                    "Quotes Only For Your",
                                    style: textTheme.headline4,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ), // Text
                                ), // Flexible
                                Flexible(child: Image(image: AssetImage(sTopQuotesImage2), height: 110)),
                              ]), // Row
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                                    onPressed: () {},
                                    child: const Icon(Icons.play_arrow),
                                  ), // ElevatedButton
                                  const SizedBox(width: sDashboardCardPadding),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Love live", style: textTheme.headline4, overflow: TextOverflow.ellipsis),
                                        Text("Werner Erhard thought about life ", style: textTheme.bodyText2, overflow: TextOverflow.ellipsis),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
