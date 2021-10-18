import 'package:flutter/material.dart';

class Seaarch extends StatefulWidget {
  @override
  _SeaarchState createState() => _SeaarchState();
}

class _SeaarchState extends State<Seaarch> {
  final controler = TextEditingController();
  String? text1;
  void initState() {
    super.initState();

    controler.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          Container(
            child: AlertDialog(
              title: Text(
                'بحث في القران ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                TextFormField(
                  controller: controler,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'عل اقل ثلاثه اخرف',
                    suffixIcon:
                        controler.text.isEmpty ? null : Icon(Icons.clear),
                    prefixIcon: controler.text.isEmpty
                        ? IconButton(
                            icon: Icon(Icons.search, size: 16),
                            onPressed: () {},
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
