import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Service.dart';
import 'Notification/notification.dart';
import 'Withdraw_Screen/withdraw.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SelectionBehavior _selectionBehavior;
  late TooltipBehavior _tooltipBehavior;
  bool state = false;
  final List<ChartData> chartData = [
    ChartData(
      '02/28',
      12,
      10,
    ),
    ChartData(
      '03/01',
      14,
      11,
    ),
    ChartData(
      '03/02',
      16,
      10,
    ),
    ChartData(
      '03/03',
      18,
      16,
    ),
    ChartData(
      '03/03',
      18,
      16,
    ),
    ChartData(
      '03/03',
      18,
      16,
    ),
  ];
  @override
  void initState() {
    _selectionBehavior = SelectionBehavior(
      enable: true,
    );
    _tooltipBehavior = TooltipBehavior(
        builder: (data, point, series, pointIndex, seriesIndex) {
          return Container(
            height: 94,
            width: 87,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.DARK_BLUE800),
            child: Column(
              children: [
                Text(
                  "${data.y1}",
                  style: TextStyle(color: AppColors.WHITE),
                ),
                Text(
                  "${data.y2}",
                  style: TextStyle(color: AppColors.WHITE),
                ),
                Text(
                  "${data.y1 + data.y2}",
                  style: TextStyle(color: AppColors.WHITE),
                ),
              ],
            ),
          );
        },
        enable: true,
        color: Colors.black);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 24,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.GREEN100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 6,
                              width: 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.GREEN),
                            ),
                            Text(
                              'ON',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  color: AppColors.GREEN),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Gathering (Wi-Fi)',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.Mukta_medium,
                            fontSize: 14,
                            letterSpacing: -0.15,
                            color: AppColors.GREY700),
                      )
                    ],
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NotificationSCreen(),
                            ));
                      },
                      child: Image.asset('assest/ic_notification.png'))
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: 267,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFfEFEFEF), width: 2),
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.WHITE),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            children: [
                              Image.asset('assest/ic_Favicon.png'),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Balance',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: Appfont.SpaceGrotesk_medium,
                                    fontSize: 16,
                                    letterSpacing: -0.25,
                                    color: AppColors.DARK_BLUE800),
                              )
                            ],
                          )),
                          Text(
                            '\$19.0333',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontFamily: Appfont.SpaceGrotesk,
                                fontSize: 24,
                                letterSpacing: 1,
                                color: AppColors.DARK_BLUE800),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        color: Color(0xFFEFEFEF),
                        thickness: 2,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bandwidth earnings:',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: Appfont.Mukta,
                                fontSize: 15.5,
                                letterSpacing: -0.15,
                                color: AppColors.GREY500),
                          ),
                          Text(
                            '\$10.0221',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: Appfont.Mukta_medium,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: AppColors.GREY700),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Referral earnings:',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: Appfont.Mukta,
                                fontSize: 15.5,
                                letterSpacing: -0.15,
                                color: AppColors.GREY500),
                          ),
                          Text(
                            '\$9.0221',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: Appfont.Mukta_medium,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: AppColors.GREY700),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WithDrawScreen(),
                              ));
                        },
                        child: Container(
                          height: 83,
                          decoration: BoxDecoration(
                              color: Color(0xFF004267),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Image.asset(
                                    'assest/ic_ps_icon1.png',
                                    height: 40,
                                    width: 40,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Reach \$20 to request payout',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                Appfont.SpaceGrotesk_medium,
                                            fontSize: 15,
                                            letterSpacing: -0.25,
                                            color: AppColors.WHITE),
                                      ),
                                      Text(
                                        '90% complete',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                Appfont.SpaceGrotesk_medium,
                                            fontSize: 14,
                                            letterSpacing: -0.25,
                                            color: AppColors.GREY300),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Container(
                                width: 320,
                                height: 6,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    /* color: AppColors.GREY300,*/
                                    gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.topLeft,
                                        colors: [
                                          Color(0xFF0FA3B1),
                                          Color(0xFF01DE89),
                                          Color.fromRGBO(1, 222, 137, 0),
                                        ])),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),

            //-------Mainchart Container----------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                height: 525,
                decoration: BoxDecoration(
                    color: AppColors.WHITE,
                    border: Border.all(color: Color(0xFFEFEFEF), width: 2),
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 36,
                            width: 152,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.GREEN)),
                                child: Text(
                                  'Weekly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.DARK_BLUE800,
                                      fontFamily: Appfont.SpaceGrotesk_medium,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1),
                                ),
                                onPressed: () {}),
                          ),
                          Container(
                            height: 36,
                            width: 152,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8)),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    elevation: MaterialStateProperty.all(0),
                                    backgroundColor: MaterialStateProperty.all(
                                        AppColors.WHITE)),
                                child: Text(
                                  'Monthly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.GREY400,
                                      fontFamily: Appfont.SpaceGrotesk_medium,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1),
                                ),
                                onPressed: () {}),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //----------------Weeklt container------------------//

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 174,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xFfEFEFEF), width: 2),
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.WHITE),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'This week',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily:
                                                Appfont.SpaceGrotesk_medium,
                                            fontSize: 14,
                                            letterSpacing: -0.25,
                                            color: AppColors.GREY800),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '+\$4.9328',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontFamily: Appfont.SpaceGrotesk,
                                            fontSize: 24,
                                            letterSpacing: 1,
                                            color: AppColors.DARK_BLUE800),
                                      ),
                                      Text(
                                        '1372.32MB shared',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontFamily: Appfont.Mukta_medium,
                                            fontSize: 14,
                                            letterSpacing: -0.15,
                                            color: AppColors.GREY500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Divider(
                                color: Color(0xFFEFEFEF),
                                thickness: 2,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Bandwidth earnings:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: Appfont.Mukta,
                                        fontSize: 15.5,
                                        letterSpacing: -0.15,
                                        color: AppColors.GREY500),
                                  ),
                                  Text(
                                    '\$10.0221',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Appfont.Mukta_medium,
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        color: AppColors.GREY700),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Referral earnings:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: Appfont.Mukta,
                                        fontSize: 15.5,
                                        letterSpacing: -0.15,
                                        color: AppColors.GREY500),
                                  ),
                                  Text(
                                    '\$9.0221',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Appfont.Mukta_medium,
                                        fontSize: 16,
                                        letterSpacing: 1,
                                        color: AppColors.GREY700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    //----------------Weeklt container------------------//
                    Container(
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.left_chevron,
                            color: AppColors.GREEN,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Feb 28 - Mar 6',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontFamily: Appfont.SpaceGrotesk_medium,
                                fontSize: 14,
                                color: AppColors.GREY800,
                                letterSpacing: -0.25),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Icon(
                            CupertinoIcons.right_chevron,
                            color: AppColors.GREEN,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 210,
                      child: SfCartesianChart(
                          selectionType: SelectionType.cluster,
                          primaryXAxis: CategoryAxis(
                            arrangeByIndex: true,
                          ),
                          tooltipBehavior: _tooltipBehavior,
                          series: <ChartSeries>[
                            StackedColumnSeries<ChartData, String>(
                                dataSource: chartData,
                                color: Color(0xFF06AED5),
                                enableTooltip: true,
                                name: 'group1',
                                selectionBehavior: _selectionBehavior,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y1),
                            StackedColumnSeries<ChartData, String>(
                                dataSource: chartData,
                                color: AppColors.GREEN,
                                enableTooltip: true,
                                name: 'group2',
                                selectionBehavior: _selectionBehavior,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y2),
                          ]),
                    )
                  ],
                ),
              ),
            ),
            //-------Mainchart Container----------//

            SizedBox(
              height: 24,
            ),
            //-------Community Container----------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                height: 170,
                width: 345,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assest/ic_bg2.png'))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Join our community',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 20,
                            letterSpacing: -0.25,
                            color: AppColors.WHITE),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Get access to quick support, updates\nand promotions',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.Mukta_medium,
                            fontSize: 15.5,
                            letterSpacing: -0.15,
                            color: AppColors.WHITE),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 143,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.GREY300, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.WHITE),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assest/ic_twitter.png',
                                    color: AppColors.BLUELIGHT,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Twitter',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontSize: 14,
                                        letterSpacing: -0.25,
                                        color: AppColors.GREY700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Container(
                              height: 36,
                              width: 143,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.GREY300, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.WHITE),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assest/ic_discot.png',
                                    color: AppColors.BLUELIGHT,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Discord',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontSize: 14,
                                        letterSpacing: -0.25,
                                        color: AppColors.GREY700),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //-------Community Container----------//

            SizedBox(
              height: 24,
            ),
            //-------Refer Container----------//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Container(
                height: 364,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage('assest/ic_bg3.png'),
                        fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Refer friends and get 10%\nlifetime commission,\nplus \$5 bonus',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 20,
                            letterSpacing: -0.25,
                            color: AppColors.WHITE),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Everyone who joins using your\nreferral link gets \$5 signup bonus.\nYou get a lifetime 10% commission\nand a \$5 bonus on their first payout.',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: Appfont.Mukta,
                            fontSize: 15.5,
                            letterSpacing: -0.15,
                            color: AppColors.GREY200),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'YOUR ERFERRAL LINK',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 14,
                            letterSpacing: 1,
                            color: AppColors.GREEN),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 24),
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.DARK_BLUE800, width: 2),
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, top: 9),
                            child: Text(
                              'https://repocket.co/r/x7sh8',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Appfont.SpaceGrotesk_Regular,
                                  fontSize: 14,
                                  letterSpacing: -0.25,
                                  color: AppColors.WHITE),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 143,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.GREY300, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.GREEN),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assest/ic_copy.png',
                                    color: AppColors.DARK_BLUE800,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Copy',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontSize: 14,
                                        letterSpacing: -0.25,
                                        color: AppColors.DARK_BLUE800),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            Container(
                              height: 36,
                              width: 143,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.GREY300, width: 1),
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.WHITE),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assest/ic_share.png',
                                    color: AppColors.GREY500,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Share',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: Appfont.SpaceGrotesk_medium,
                                        fontSize: 14,
                                        letterSpacing: -0.25,
                                        color: AppColors.GREY700),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //-------Refer Container----------//
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y1,
    this.y2,
  );
  final String x;
  final double y1;
  final double y2;
}
