import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class ChartsDemo extends StatefulWidget {
  const ChartsDemo({super.key});

  @override
  State<ChartsDemo> createState() => _ChartsDemoState();
}

class _ChartsDemoState extends State<ChartsDemo> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  List<_PieData>PieData=[
    _PieData('food', 40,),
    _PieData('Education',20),
    _PieData('Dress', 30),
    _PieData('Others', 10),
  ];
  List<ChartData>chartData=[
    ChartData(20,30,40,50,'India'),
    ChartData(40,70,20,80,'Uk'),
    ChartData(10,30,50,70,'China'),
    ChartData(50,60,40,50,'USA'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter chart'),
          backgroundColor: Colors.tealAccent,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            //Initialize the chart widget
            SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(text: 'Half yearly sales analysis'),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<_SalesData, String>>[
                  LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,
                      name: 'Sales',
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true))
                ]),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     //Initialize the spark charts widget
            //     child: SfSparkLineChart.custom(
            //       //Enable the trackball
            //       trackball: SparkChartTrackball(
            //           activationMode: SparkChartActivationMode.tap),
            //       //Enable marker
            //       marker: SparkChartMarker(
            //           displayMode: SparkChartMarkerDisplayMode.all),
            //       //Enable data label
            //       labelDisplayMode: SparkChartLabelDisplayMode.all,
            //       xValueMapper: (int index) => data[index].year,
            //       yValueMapper: (int index) => data[index].sales,
            //       dataCount: 5,
            //     ),
            //   ),
            // ),
            Container(
              child: SfCircularChart(
            title: ChartTitle(text: 'Monthly Expenses'),
            legend: Legend(isVisible: true),
            series: <PieSeries<_PieData, String>>[
            PieSeries<_PieData, String>(
            explode: true,
            explodeIndex: 0,
            dataSource: PieData,
            xValueMapper: (_PieData data, _) => data.xData,
            yValueMapper: (_PieData data, _) => data.yData,
            dataLabelSettings: DataLabelSettings(isVisible: true)),
    ]
    )
              ),
            Container(
              child: SfCartesianChart(
                primaryXAxis:CategoryAxis(),
                series:<ChartSeries>[
                  StackedColumnSeries<ChartData,String>(
                    dataSource:chartData,
                    xValueMapper: (ChartData ch,__)=>ch.X,
                    yValueMapper: (ChartData ch,__)=>ch.A1,
                  ),
                  StackedColumnSeries<ChartData,String>(
                    dataSource:chartData,
                    xValueMapper: (ChartData ch,__)=>ch.X,
                    yValueMapper: (ChartData ch,__)=>ch.A2,
                  ),
                  StackedColumnSeries<ChartData,String>(
                    dataSource:chartData,
                    xValueMapper: (ChartData ch,__)=>ch.X,
                    yValueMapper: (ChartData ch,__)=>ch.A3,
                  ),
                  StackedColumnSeries<ChartData,String>(
                    dataSource:chartData,
                    xValueMapper: (ChartData ch,__)=>ch.X,
                    yValueMapper: (ChartData ch,__)=>ch.A4,
                  )
                ]
              ),
            )
          ]),
        )
    );
  }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
class _PieData {
  _PieData(this.xData, this.yData);
  final String xData;
  final num yData;
}
class ChartData{
  ChartData(this.A1,this.A2,this.A3,this.A4,this.X);
  final String X;
  final int A1;
  final int A2;
  final int A3;
  final int A4;
}