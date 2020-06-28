import 'dart:async';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

class trippage extends StatefulWidget {
  trippage({Key key}) : super(key: key);

  @override
  _trippageState createState() => _trippageState();
}

class _trippageState extends State<trippage> {
  final List<Map> _orderIDList = [
    {
      "id": 1,
    },
    {
      "id": 2,
    },
    {
      "id": 3,
    },
    {
      "id": 4,
    }
  ];

  static double a = 25, b = 15, c = 20, d = 45, e = 55, f = 15;
  final List<Map> _expensebreakdownlist = [
    {
      "name": "Hotel Charges", //
      "color": Colors.orange[200], //
      "theme": RoundedProgressBarTheme.yellow,
      "transactions": 6, //
      "amount": "\u20B998,000", //
      "percent": a,
      "extra": "10% of Invoice" //
    },
    {
      "name": "Compliance",
      "color": Colors.red[300],
      "theme": RoundedProgressBarTheme.red,
      "transactions": 8,
      "amount": "\u20B918,000",
      "percent": b,
      "extra": "0.4% of Invoice"
    },
    {
      "name": "Subscription Charges",
      "color": Colors.indigo[400],
      "theme": RoundedProgressBarTheme.blue,
      "transactions": 1,
      "amount": "\u20B948,000",
      "percent": c,
      "extra": "05% of Budget"
    },
    {
      "name": "Penalty",
      "color": Colors.green[300],
      "theme": RoundedProgressBarTheme.green,
      "transactions": 38,
      "amount": "\u20B910,000",
      "percent": d,
      "extra": "0.5% of Budget"
    },
    {
      "name": "Maintenance",
      "color": Colors.deepPurple[200],
      "theme": RoundedProgressBarTheme.purple,
      "transactions": 64,
      "amount": "\u20B916,00,008",
      "percent": e,
      "extra": "30% of Budget"
    },
    {
      "name": "Others",
      "color": Colors.grey[500],
      "theme": RoundedProgressBarTheme.midnight,
      "transactions": 4,
      "amount": "\u20B916,000",
      "percent": f,
      "extra": "01% of Budget"
    }
  ];

  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> _controller = Completer();

    final CameraPosition cam_pos = CameraPosition(
      target: LatLng(17.6868, 83.2185),
      zoom: 8,
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          starting_slider(),
          new SizedBox(height: 20),
          new Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Live Tracking',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          new Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  blurRadius: 2.0,
                  spreadRadius: 1,
                  offset: Offset(
                    0.0,
                    5.0,
                  ),
                )
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: cam_pos,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          new SizedBox(height: 15),
          new Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          new Container(
            height: 180,
            margin: EdgeInsets.fromLTRB(20, 13, 20, 13),
            padding: EdgeInsets.fromLTRB(12, 14, 12, 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 10.0,
                    spreadRadius: 1.0),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(
                          "KA 01J 1133",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(
                              "From",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            new Text(
                              "Sharma Transports Bengaluru",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                new SizedBox(width: 15),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Row(
                          children: [
                            new Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars0.githubusercontent.com/u/45914632?s=460&v=4"),
                                ),
                              ),
                            ),
                            new SizedBox(width: 5),
                            new Text(
                              "ABCDEFGH",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(
                              "To",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            new Text(
                              "Tilak Export Company MUmbai",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Expense Breakdown',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          new SizedBox(height: 15),
          new Container(
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.orange[200],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.red[300],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.indigo[400],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green[300],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.deepPurple[200],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 520,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: new ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: _expensebreakdownlist.length,
              itemBuilder: (BuildContext context, int index) {
                return _expenselistview(context, index);
              },
            ),
          ),
          new Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Vehicle Details',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          new Container(
            height: 120,
            margin: EdgeInsets.fromLTRB(20, 13, 20, 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 10.0,
                  spreadRadius: 1,
                  offset: Offset(
                    0.0,
                    5.0,
                  ),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Icon(
                  Icons.local_shipping,
                  color: Colors.grey[800],
                  size: 55,
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: new Text(
                        'KA 02 M 2021',
                        style: TextStyle(
                            backgroundColor: Colors.red[100],
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    new Text(
                      "Total km: 45,452",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          new Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Driver Details',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          new Container(
            height: 120,
            margin: EdgeInsets.fromLTRB(20, 13, 20, 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[400],
                  blurRadius: 10.0,
                  spreadRadius: 1,
                  offset: Offset(
                    0.0,
                    5.0,
                  ),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                  ),
                ),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: new Text(
                        'ABCDEFGH',
                        style: TextStyle(
                            backgroundColor: Colors.green[100],
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    new Text(
                      "+91-9999999999",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                new Center(
                  child: new Text(
                    'Call',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          new SizedBox(height: 16.0)
        ],
      ),
    );
  }

  Widget _expenselistview(BuildContext context, int index) {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          new Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: _expensebreakdownlist[index]["color"],
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          new SizedBox(width: 15),
          Container(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Row(
                  
                  children: [
                    new Text(
                      _expensebreakdownlist[index]["name"],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    new Text(" : ",
                    style: TextStyle(
                      fontWeight: FontWeight.w800
                    ),),
                    new Text(
                      _expensebreakdownlist[index]["amount"],
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    new Text(
                        _expensebreakdownlist[index]["transactions"].toString() +
                            " Transactions",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500]),
                      ),
                    new SizedBox(width: 80,),
                    new Text(
                      _expensebreakdownlist[index]["extra"].toString(),
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                  ],
                ),
                new LinearPercentIndicator(
                  width: 260,
                  lineHeight: 5.0,
                  percent: _expensebreakdownlist[index]["percent"] / 100,
                  backgroundColor: Colors.indigo[100],
                  progressColor: _expensebreakdownlist[index]["color"],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget starting_slider() {
    return new Stack(
      children: [
        Container(
          height: 380,
          color: Colors.indigo,
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                height: 50,
                child: new Row(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                            Icons.chevron_left,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 5,
                      child: Center(
                        child: Text(
                          'Trip ID 2022',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  height: 470,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                ),
                items: _orderIDList.map((e) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 2.0,
                              spreadRadius: 1,
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            )
                          ],
                        ),
                        margin: EdgeInsets.all(5),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            new Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    new CircularPercentIndicator(
                                      radius: 100.0,
                                      lineWidth: 3.5,
                                      percent: 0.85,
                                      center: new Container(
                                        width: 75,
                                        height: 75,
                                        decoration: BoxDecoration(
                                          color: Colors.red[300],
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      progressColor: Colors.green,
                                    ),
                                    new Text(
                                      "Order ID " + e["id"].toString(),
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    new Text(
                                      'You are running on time',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            new Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    new Container(
                                      height: 1,
                                      color: Colors.grey[300],
                                    ),
                                    Container(
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              new CircularPercentIndicator(
                                                radius: 65.0,
                                                lineWidth: 2.5,
                                                percent: 0.85,
                                                center: new Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.indigo[50],
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(
                                                    Icons.directions,
                                                    color: Colors.indigo[400],
                                                    size: 28,
                                                  ),
                                                ),
                                                progressColor:
                                                    Colors.indigo[400],
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new Text(
                                                '1200km',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new Text(
                                                'Total Dist.',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey[500]),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              new CircularPercentIndicator(
                                                radius: 65.0,
                                                lineWidth: 2.5,
                                                percent: 0.85,
                                                center: new Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.orange[50],
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Icon(
                                                    Icons.access_time,
                                                    color: Colors.orange[500],
                                                    size: 28,
                                                  ),
                                                ),
                                                progressColor:
                                                    Colors.orange[300],
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new Text(
                                                '48:09:12',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new Text(
                                                'Duration',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey[500]),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              new CircularPercentIndicator(
                                                radius: 65.0,
                                                lineWidth: 2.5,
                                                percent: 0.85,
                                                center: new Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red[50],
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child:
                                                      Icon(Icons.shutter_speed),
                                                ),
                                                progressColor: Colors.red[300],
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new Text(
                                                '69kmph',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              new SizedBox(
                                                height: 5,
                                              ),
                                              new Text(
                                                'Avg. speed',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey[500]),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    new Container(
                                      height: 1,
                                      color: Colors.grey[300],
                                    ),
                                    new Center(
                                      child: Text(
                                        'View Details',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
