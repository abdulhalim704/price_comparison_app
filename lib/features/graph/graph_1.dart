import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../gen/colors.gen.dart';

class Graph1 extends StatelessWidget {
  Graph1({super.key});

  final chartData = [
    ChartData(0, 6),
    ChartData(1, 5),
    ChartData(2, 7),
    ChartData(3, 6.5),
    ChartData(4, 8),
    ChartData(5, 9),
    ChartData(6, 8),
    ChartData(7, 7),
    ChartData(8, 6),
    ChartData(9, 4),

    //ChartData(46, 5),
  ];

  @override
  Widget build(BuildContext context) {
    final highest = getHighestY(chartData);
    return SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: const NumericAxis(
          isVisible: false,
        ),
        primaryYAxis: const NumericAxis(
          isVisible: false,
        ),
        series: <CartesianSeries>[
          itemGraph(highest),
        ]);
  }

  SplineAreaSeries itemGraph(double highest) =>
      SplineAreaSeries<ChartData, double>(
        splineType: SplineType.cardinal,
        dataSource: chartData,

        dataLabelSettings: DataLabelSettings(
          offset: const Offset(0, -24),
          isVisible: true,
          // color: Colors.white,
          // borderColor: Colors.yellow,

          builder: (data, point, series, pointIndex, seriesIndex) =>
              highest != point.y
                  ? const SizedBox.shrink()
                  : Container(
                      margin: const EdgeInsets.only(top: 2),
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 2,
                                offset: Offset(1, 1))
                          ]),
                      child: Center(
                        child: Container(
                            height: 10,
                            width: 10,
                            decoration: const ShapeDecoration(
                              shape: OvalBorder(),
                              color: AppColors.allPrimaryColor,
                            )),
                      ),
                    ),
        ),
        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
        borderWidth: 4,
        //borderDrawMode: BorderDrawMode.top,
        gradient: LinearGradient(colors: <Color>[
          AppColors.allPrimaryColor.withOpacity(.09),
          const Color(0xFFF0FAF6).withOpacity(.73),
          const Color(0xFFF0FAF6).withOpacity(.78),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        borderColor: AppColors.allPrimaryColor,
        // borderGradient:  const LinearGradient(
        //     colors: <Color>[
        //       AppColors.allPrimaryColor,
        //       Color(0xFFF0FAF6),
        //       Color(0xFFF0FAF6),
        //     ],
        //     stops: <double>[
        //       0.2,
        //       0.9,
        //       0.1
        //     ]
        // ),
      );

  double getHighestY(List<ChartData> data) {
    double highestY = data.first.y!;
    for (var element in data) {
      if (element.y! > highestY) {
        highestY = element.y!;
      }
    }
    return highestY;
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final double x;
  final double? y;
}
