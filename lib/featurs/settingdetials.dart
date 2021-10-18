import 'package:flutter/material.dart';

class SettingDetials extends StatefulWidget {
  @override
  _SettingDetialsState createState() => _SettingDetialsState();
}

class _SettingDetialsState extends State<SettingDetials> {
  List<Map<String, bool>> detialLisin = [
    {'عبدالباسط عبد الصم': false},
    {'محمود الصحري': false},
    {'حمد الصديق': false}
  ];
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AlertDialog(
        title: Text(
          'الاعدادات',
          textAlign: TextAlign.center,
        ),
        actions: [
          Column(
            children: [
              ...detialLisin.map((title) => MaterialButton(
                  onPressed: () {
                    setState(() {
                      isChecked = true;
                    });
                  },
                  child: Row(
                    children: [
                      if (isChecked) Icon(Icons.check),
                    ],
                  )))
            ],
          )
        ],
      )
    ]);
  }
}
