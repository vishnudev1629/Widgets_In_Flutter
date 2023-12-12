import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class DateTimePickerExample extends StatefulWidget {
  const DateTimePickerExample({Key? key}) : super(key : key);

  @override
  State<DateTimePickerExample> createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  TextEditingController dateinput = TextEditingController();
  TextEditingController timeinput = TextEditingController();

  void initState() {
    dateinput.text = "";
    timeinput.text = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date And Time Picker Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 400,
              child: TextField(
                controller: dateinput,
                decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    labelText: "Enter Date"
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030)
                  );
                  if(pickedDate != null ){
                    print(pickedDate);
                    // String formattedDate = DateFormat.yMMMEd().format(pickedDate);
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                    // print(formattedDate);
                    setState(() {
                      dateinput.text = pickedDate.toString();
                    });
                  }else{
                    print("Date is not selected");
                  }
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 400,
              child: TextField(
                controller: timeinput,
                decoration: InputDecoration(
                    icon: Icon(Icons.punch_clock_rounded),
                    labelText: "Enter Time"
                ),
                readOnly: true,
                onTap: () async {
                  TimeOfDay? timePicked = await showTimePicker(context: context,
                      initialTime: TimeOfDay(hour: 12, minute: 00));
                  if(timePicked != null ){
                    print(timePicked);
                    setState(() {
                      timeinput.text = timePicked.format(context).toString();
                    });
                  }
                  else
                  {
                    print("Time is not selected");
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
