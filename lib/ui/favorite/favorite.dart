import 'package:flutter/material.dart';
import '../../model/bus_pair.dart';

class FavoriteWidget extends StatefulWidget {
  FavoriteWidget({Key key}) : super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
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
            color: Theme.of(context).backgroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        BusPairCard(),
                        BusPairCard(),
                        BusPairCard(),
                        BusPairCard()
                      ],
                    ),
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

class BusPairCard extends StatelessWidget {
  BusPair bus_pair = BusPair(origin: "九大学研都市駅", destination: "産学連携交流センター");

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Theme.of(context).accentColor,
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
                  child: Text('出発 :',
                      style: Theme.of(context).textTheme.bodyText2),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    bus_pair.origin,
                    style: Theme.of(context).textTheme.bodyText2,
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
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    bus_pair.destination,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
