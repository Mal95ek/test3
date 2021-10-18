import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> listining = [
    'اخيتار القارـ',
    'تنزيل الصور ',
    'تنزيل الصور اليت تحتوي ايات '
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            AlertDialog(
              title: Text(
                'الاعدادات',
                textAlign: TextAlign.center,
              ),
              actions: [
                Column(
                  children: [
                    ...listining.map((title) => MaterialButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => Setting());
                        },
                        child: Tab(text: title)))
                  ],
                )
              ],
            )
          ],
        ));
  }
}

Widget detial() {
  List detialLisin = ['محمد الصديق ', 'محمود الصحري ', 'عبدالباسط عبد الصمد '];
  var isCheckedCell = false;
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
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.check),
                    Tab(text: title),
                  ],
                )))
          ],
        )
      ],
    )
  ]);
}
