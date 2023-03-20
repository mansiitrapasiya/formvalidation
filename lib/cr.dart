import 'package:flutter/material.dart';



class Temp extends StatefulWidget {
  Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

enum Selection { Boy, Girl }

class _TempState extends State<Temp> {
  List<String> subject = [];
  Selection? selected;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          Column(
            children: [
              Checkbox(
                value: subject.contains("English"),
                onChanged: (v) {
                  if (v == true) {
                    subject.add("English");
                  } else {
                    subject.remove("English");
                  }
                  setState(() {});
                },
              ),
              Checkbox(
                value: subject.contains("Sanskrit"),
                onChanged: (v) {
                  if (v == true) {
                    subject.add("Sanskrit");
                  } else {
                    subject.remove("Sanskrit");
                  }
                  setState(() {});
                },
              ),
              Text(subject.join(", "))
            ],
          ),
          Column(
            children: [
              Radio<Selection>(
                  value: Selection.Girl,
                  groupValue: selected,
                  onChanged: (v) {
                    selected = v;
                    setState(() {

                    });
                  }),
                  
              Radio(
                  value: Selection.Boy,
                  groupValue: selected,
                  onChanged: (v) {
                    selected = v;
                    setState(() {});
                  }),
              Text(selected.toString()),
            ],
          ),
          ElevatedButton(
              onPressed: () {
                subject = [];
                selected = null;
                setState(() {});
              },
              child: Text("Reset"))
        ],
      )),
    );
  }
}
