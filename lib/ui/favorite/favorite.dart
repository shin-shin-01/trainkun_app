import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({Key key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  String dropDownValue1 = "九大学研都市駅";
  String dropDownValue2 = "九大学研都市駅";
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.07,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 3, 3, 3),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    child: Text(
                                      '出発 :',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '九大学研都市駅',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    child: Text(
                                      '到着 :',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '産学連携交流センター',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Color(0xFFF5F5F5),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(5, 3, 3, 3),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    child: Text(
                                      '出発 :',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '九大学研都市駅',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                                    child: Text(
                                      '到着 :',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(
                                      '産学連携交流センター',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
