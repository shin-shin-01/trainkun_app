import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../favorite/favorite.dart';
import '../../model/timetable.dart';

class HomeWidget extends StatefulWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  DateTime datePicked = DateTime.now();
  String dropDownValue1 = "九大学研都市駅";
  String dropDownValue2 = "産学連携交流センター";
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).accentColor,
                        size: 30,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment(0, 0),
                      child: Text('ばすくん',
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(fontSize: 25)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: InkWell(
                      onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return SimpleDialog(
                                title: Text("お気に入りバス停",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(fontSize: 17)),
                                children: [
                                  SizedBox(
                                      child: FavoriteWidget(),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.5,
                                      width: MediaQuery.of(context).size.width *
                                          0.8),
                                ],
                                backgroundColor: Theme.of(context).primaryColor,
                              );
                            });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/287/600',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    TimetableCard(),
                    TimetableCard(),
                    TimetableCard(),
                    TimetableCard()
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 15.0,
                        right: 20.0,
                        child: Icon(
                          Icons.add_location_alt_outlined,
                          color: Theme.of(context).accentColor,
                          size: 30,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('出発時刻',
                                    textAlign: TextAlign.start,
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                                InkWell(
                                  onTap: () async {
                                    await DatePicker.showDatePicker(context,
                                        showTitleActions: true,
                                        onConfirm: (date) {
                                      setState(() => datePicked = date);
                                    }, currentTime: DateTime.now());
                                  },
                                  child: Text('14:27',
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1
                                          .copyWith(fontSize: 35)),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 30,
                                    child: DropdownButton(
                                      value: dropDownValue1,
                                      items: <String>[
                                        '九大学研都市駅',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() => dropDownValue1 = value);
                                      },
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      underline: SizedBox(),
                                      icon: Icon(
                                        Icons.where_to_vote,
                                        color: Theme.of(context).accentColor,
                                        size: 15,
                                      ),
                                      dropdownColor:
                                          Theme.of(context).primaryColor,
                                      elevation: 2,
                                    ),
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    height: 30,
                                    child: DropdownButton(
                                      value: dropDownValue2,
                                      items: <String>[
                                        '産学連携交流センター',
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() => dropDownValue2 = value);
                                      },
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                      underline: SizedBox(),
                                      icon: FaIcon(
                                          FontAwesomeIcons.fontAwesomeFlag,
                                          color: Theme.of(context).accentColor,
                                          size: 15),
                                      dropdownColor:
                                          Theme.of(context).primaryColor,
                                      elevation: 2,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class TimetableCard extends StatelessWidget {
  Timetable timetable = Timetable(
      destination: "九州大学 (伊都営業所)", via: "周船寺・産学連携交流センター", departuteAt: '14:50');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '行先 : ',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          timetable.destination,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '経由 : ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        timetable.via,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    timetable.departuteAt,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Theme.of(context).primaryColor,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
