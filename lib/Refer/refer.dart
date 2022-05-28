import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repocket/Service.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Home/homepage.dart';

class ReferScrren extends StatefulWidget {
  const ReferScrren({Key? key}) : super(key: key);

  @override
  State<ReferScrren> createState() => _ReferScrrenState();
}

class _ReferScrrenState extends State<ReferScrren> {
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 459,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.DARK_BLUE500),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Earn more by referring\n             friends',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: Appfont.SpaceGrotesk_medium,
                        fontSize: 24,
                        color: AppColors.WHITE,
                        letterSpacing: -0.25),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 162,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.DARK_BLUE400),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Payout bonus',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  color: AppColors.WHITE,
                                  letterSpacing: -0.25),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '\$5',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: Appfont.SpaceGrotesk,
                                  fontSize: 24,
                                  color: AppColors.GREEN,
                                  letterSpacing: 1),
                            ),
                            Text(
                              'When your referred\nuser completes their\n         first payout',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Appfont.Mukta,
                                  fontSize: 14,
                                  color: AppColors.GREY300,
                                  letterSpacing: -0.15),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        height: 162,
                        width: 146,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.DARK_BLUE400),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              '   Lifelong\nCommission',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: Appfont.SpaceGrotesk_medium,
                                  fontSize: 14,
                                  color: AppColors.WHITE,
                                  letterSpacing: -0.25),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '10%',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: Appfont.SpaceGrotesk,
                                  fontSize: 24,
                                  color: AppColors.GREEN,
                                  letterSpacing: 1),
                            ),
                            Text(
                              '     Earn an ongoing\n commission on yourn \n      friends’ earnings',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: Appfont.Mukta,
                                  fontSize: 14,
                                  color: AppColors.GREY300,
                                  letterSpacing: -0.15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'How does it work?',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.Mukta_medium,
                            fontSize: 14,
                            color: AppColors.GREEN,
                            letterSpacing: -0.15),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 15,
                        color: AppColors.GREEN,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'YOUR ERFERRAL LINK',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: Appfont.SpaceGrotesk_medium,
                            fontSize: 14,
                            letterSpacing: 1,
                            color: AppColors.GREY300),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 44,
                    width: 305,
                    decoration: BoxDecoration(
                        color: AppColors.DARK_BLUE800,
                        border:
                            Border.all(color: AppColors.DARK_BLUE800, width: 2),
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
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 36,
                        width: 143,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: AppColors.GREY300, width: 1),
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
                            border:
                                Border.all(color: AppColors.GREY300, width: 1),
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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Referral earning',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: Appfont.SpaceGrotesk,
                  fontSize: 24,
                  color: AppColors.GREY800,
                  letterSpacing: -0.25),
            ),
          ),
          SizedBox(
            height: 10,
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
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Divider(
                              color: Color(0xFFEFEFEF),
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 8,
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
                        ]),
                  )
                ],
              ),
            ),
          ),
          //-------Mainchart Container----------//
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Referral earning',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontFamily: Appfont.SpaceGrotesk,
                      fontSize: 24,
                      color: AppColors.GREY800,
                      letterSpacing: -0.25),
                ),
                Text(
                  '0 users',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: Appfont.Mukta,
                      fontSize: 15.5,
                      color: AppColors.GREY500,
                      letterSpacing: -0.15),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                  color: AppColors.WHITE,
                  border: Border.all(color: Color(0xFFEFEFEF), width: 2),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                child: Text(
                  'It’s silent here. Start inviting your friends!',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: Appfont.SpaceGrotesk_medium,
                      fontSize: 14,
                      letterSpacing: -0.25,
                      color: AppColors.GREY500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
