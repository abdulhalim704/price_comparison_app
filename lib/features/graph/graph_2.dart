import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../gen/colors.gen.dart';

class Graph2 extends StatelessWidget {
  Graph2({super.key});

  final chartData = [
    ChartData(0, 6),
    ChartData(1, 5),
    ChartData(2, 6),
    ChartData(3, 5),
    ChartData(4, 6.2),
    ChartData(5, 4),
    ChartData(6, 5),
    ChartData(7, 6),
    ChartData(8, 5),
    ChartData(9, 4),

    //ChartData(46, 5),
  ];

  @override
  Widget build(BuildContext context) {
    final highest = getHighestY(chartData);
    return SfCartesianChart(
        plotAreaBorderWidth: 0,
        primaryXAxis: const NumericAxis(
          isVisible: true,
          majorGridLines: MajorGridLines(color: Colors.transparent),
        ),
        primaryYAxis:
        NumericAxis(
          isVisible: true,
          axisLabelFormatter: (axisLabelRenderArgs) => ChartAxisLabel('${axisLabelRenderArgs.value}€', const TextStyle()) ,  // Formatter
          majorGridLines: const MajorGridLines(color: Colors.transparent),

        ),
        series: <CartesianSeries>[
          itemGraph(highest),
        ]);
  }

  SplineAreaSeries itemGraph(double highest) =>
      SplineAreaSeries<ChartData, double>(
        splineType: SplineType.cardinal,
        dataSource: chartData,


        xValueMapper: (ChartData data, _) => data.x,
        yValueMapper: (ChartData data, _) => data.y,
        borderWidth: 4,
        //borderDrawMode: BorderDrawMode.top,
        gradient: LinearGradient(colors: <Color>[
          const Color(0xFF538FDA).withOpacity(.26),
          const Color(0xFF538FDA).withOpacity(.04),
        ],

            begin: Alignment.topCenter, end: Alignment.bottomCenter),
        borderColor: const Color(0xff64ADD6),
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
