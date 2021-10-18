import 'package:flutter/material.dart';
import 'package:great_tafsirs1/featues_custom_dialog_play_end/presention/CustomDialog/custom_dialog_play_end.dart';
import 'package:great_tafsirs1/featurs/setting.dart';
import 'package:great_tafsirs1/featursAya/presention/Aya/aya.dart';
import 'package:great_tafsirs1/featurs_custom_dialog_play_all/presention/custom_dialog_play_all/custom_dialog_play_all.dart';
import 'package:great_tafsirs1/featurs_search/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.width;
    List<Image> images = [
      Image.asset("images/soura2.png"),
      (Image.asset("images/sour1.png")),
      (Image.asset("images/soura2.png")),
      (Image.asset("images/sour1.png")),
      (Image.asset("images/sour1.png")),
    ];
    return Stack(
      children: [
        Container(
            decoration: new BoxDecoration(
          image: new DecorationImage(
            image: ExactAssetImage('images/QuranPageBackground.jpg'),
            fit: BoxFit.fitHeight,
          ),
        )),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: _height * 0.050),
              color: Colors.white,
            ),
            Stack(
              children: [
                Stack(children: [
                  Container(
                    padding: EdgeInsets.only(top: _height * 0.1),
                    height: _height * 2,
                    width: _width,
                    child: Image.asset(
                      'images/QuranFramDesign_iPhone.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      height: _height * 1.7,
                      width: _width * 1,
                      child: Container(
                        padding: EdgeInsets.all(_width * 0.1),
                        margin:
                            EdgeInsets.only(bottom: _height * 0.16, top: 45),
                        child: PageView.builder(
                          itemCount: images.length,
                          itemBuilder: (_, index) {
                            return images[index];
                          },
                        ),
                      )),
                  Stack(
                    children: [
                      Positioned(
                        top: _height * 0.12,
                        left: _width * 0.16,
                        child: Image.asset(
                          'images/Sorabaqra1.png',
                          fit: BoxFit.cover,
                          width: _width * 0.21,
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                        top: _height * 0.11,
                        right: _width * 0.16,
                        child: Image.asset('images/Joza1.png',
                            fit: BoxFit.cover, width: _width * 0.21),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned(
                          top: _height * 0.01,
                          left: _height * -0.01,
                          right: _height * 0.01,
                          child: Container(
                              height: _height * 0.1,
                              width: _width * 0.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => CustomDialogPlay());
                                      },
                                      child: (getRowButton(
                                          'images/playEnd1x.png'))),
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) =>
                                                CustomDialogPlayAll());
                                      },
                                      child: getRowButton(
                                          'images/play_all_icon.png')), // images/play_all_icon.png
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Aya());
                                      },
                                      child:
                                          getRowButton('images/ayaList.png')),

                                  //images/search_icon.png
                                  GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) => Setting());
                                      },
                                      child: getRowButton(
                                          'images/settings_icon.png')),
                                  //images/ayaList.png
                                  getRowButton('images/list_icon.png'),
                                  getRowButton(
                                      ('images/bookmark_list_icon.png')), //images/bookmark_list_icon.png
                                  getRowButton(
                                      'images/addBookMark_icon.png'), //images/addBookMark_icon.png
                                  getRowButton(
                                      (('images/search_icon.png'))), //images/search_icon.png
                                ],
                              ))),
                      //images/play_all_icon.png
                    ],
                  )
                ])
              ],
            )
          ],
        ),
      ],
    );
  }
}

Widget getRowButton(String image) {
  return Card(
    margin: EdgeInsets.zero,
    child: Image(image: AssetImage(image)),
  );
}
