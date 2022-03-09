import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/Models/drawer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../auth/login.dart';

// ignore: camel_case_types
class Dashboard_Screen extends StatefulWidget {
  const Dashboard_Screen({Key? key}) : super(key: key);

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

// ignore: camel_case_types
class _Dashboard_ScreenState extends State<Dashboard_Screen> {
  Map<String, double> dataMap = {
    "30%": 3,
    "10%": 1,
    "60%": 6,
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.2, 0.6, 0.8],
                colors: [gradiant1, gradiant3, gradiant2])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Dashboard',
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: color1),
            ),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () async {
                    SharedPreferences _prefs =
                        await SharedPreferences.getInstance();
                    await _prefs.clear();
                    Get.offAll(() => const Login_Screen());
                  },
                  icon: Icon(
                    FontAwesomeIcons.signOutAlt,
                    color: color1,
                  )),
            ],
            centerTitle: true,
          ),
          drawer: const Drawer_Menu(),
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Pie_Chart(context),
                    const SizedBox(
                      height: value1,
                    ),
                    Static_Chart(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card Pie_Chart(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Statistic Graph',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                      letterSpacing: .5),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.bars,
                      color: color2,
                    )),
              ],
            ),
            const SizedBox(
              height: value1,
            ),
            PieChart(
              dataMap: dataMap,
              animationDuration: const Duration(milliseconds: 800),
              chartLegendSpacing: 100,
              chartRadius: MediaQuery.of(context).size.width / 3.2,
              colorList: [color3, color4, color5],
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 12,
              centerText: "60%",
              centerTextStyle: TextStyle(
                  fontSize: 30, color: color5, fontWeight: FontWeight.bold),

              chartValuesOptions: const ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: false,
                showChartValuesInPercentage: false,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
              // gradientList: ---To add gradient colors---
              // emptyColorGradient: ---Empty Color gradient---
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card Static_Chart(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Statistic Graph',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                      letterSpacing: .5),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.bars,
                      color: color2,
                    )),
              ],
            ),
            const SizedBox(
              height: value1,
            ),
            SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                primaryYAxis: NumericAxis(),
                series: <ChartSeries>[
                  ColumnSeries<SalesData, String>(
                      dataSource: getColumnData(),
                      xValueMapper: (SalesData sales, _) => sales.X,
                      yValueMapper: (SalesData sales, _) => sales.Y)
                ])
          ],
        ),
      ),
    );
  }
}

class SalesData {
  String X;
  double Y;
  SalesData(this.X, this.Y);
}

dynamic getColumnData() {
  List<SalesData> columData = <SalesData>[
    SalesData("Jan", 20),
    SalesData("Feb", 40),
    SalesData("March", 30),
    SalesData("April", 80),
    SalesData("May", 60),
  ];
  return columData;
}
