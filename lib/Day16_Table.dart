import 'package:flutter/material.dart';
class TableDemo extends StatefulWidget {
  const TableDemo({super.key});

  @override
  State<TableDemo> createState() => _TableDemoState();
}

class _TableDemoState extends State<TableDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Table(
              border: TableBorder.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 3,

              ),
              children: [
                TableRow(
                  decoration: BoxDecoration(color: Colors.red),
                  children:[
                    Column(
                      children: [
                        Text('1'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('2'),
                      ],
                    ),
                    Column(
                      children: [
                        Text('3')
                      ],
                    ),
                  ]
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.green),
                  children: [
                    Column(children: [Text('A')],),
                    Column(children: [Text('B')],),
                    Column(children: [Text('C')],),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.blue),
                  children: [
                    Column(children: [Text('A')],),
                    Column(children: [Text('B')],),
                    Column(children: [Text('C')],),
                  ],
                ),
                TableRow(
                  decoration: BoxDecoration(color: Colors.yellow),
                  children: [
                    Column(children: [Text('A')],),
                    Column(children: [Text('B')],),
                    Column(children: [Text('C')],),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
