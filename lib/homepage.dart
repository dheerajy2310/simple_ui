import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _current = 0;
  final List<Map> _containerlst = [
    {"name": "Earnings", "color": Colors.indigo[500]},
    {"name": "Savings", "color": Colors.orange[500]},
    {"name": "Expenditures", "color": Colors.purple[300]},
  ];
  final List<Map> orderlist = [
    {
      "logotext": "T",
      "name": "Tirmulala Veg",
      "id": 1,
      "total": "508",
      "vehicle": "KA 01 M 2111",
      "logocolor": Colors.green[400],
    },
    {
      "logotext": "S",
      "name": "Sambara Fast food",
      "id": 2,
      "total": "232",
      "vehicle": "KA 23 M 2401",
      "logocolor": Colors.amber[300],
    },
    {
      "logotext": "P",
      "name": "Polar Bear",
      "id": 3,
      "total": "122",
      "vehicle": "KA 01 M 4212",
      "logocolor": Color(0xFFb388ff),
    }
  ];

  static double x = 40, y = 65;
  final List<Map> monthlyexpenseslist = [
    {
      "icon": Icons.local_gas_station,
      "name": "Fuel",
      "percent": x,
      "icon_background_color": Colors.indigo[400],
      "progress_color": RoundedProgressBarTheme.yellow,
    },
    {
      "icon": LineIcons.university,
      "name": "Government",
      "percent": y,
      "icon_background_color": Colors.red[300],
      "progress_color": RoundedProgressBarTheme.red,
    }
  ];
  final List<Map> _remainderlist = [
    {"name": "Remainder4"},
    {"name": "Remainder3"},
    {"name": "Remainder2"},
    {"name": "Remainder1"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new SizedBox(height: 25),
            new Container(
              height: 80,
              child: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 2.6,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              'Good Morning,',
                              style: TextStyle(
                                color: Color(0xFF9e9e9e),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: new Text(
                              'Yandrapu Dheeraj',
                              style: TextStyle(
                                color: Color(0xFF263238),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 1.5,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              new IconButton(
                                iconSize: 28,
                                icon: new Icon(
                                  Icons.notifications,
                                  color: Colors.black54,
                                ),
                                onPressed: null,
                              ),
                              new Positioned(
                                left: 20,
                                child: new Stack(
                                  children: [
                                    new Icon(Icons.brightness_1,
                                        size: 24.0, color: Colors.blue[600]),
                                    new Positioned(
                                      top: 4,
                                      right: 8,
                                      child: new Center(
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://avatars0.githubusercontent.com/u/45914632?s=460&v=4'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new SizedBox(height: 20),
            new CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.8,
                height: 170,
                initialPage: 0,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: Duration(milliseconds: 3000),
                enlargeCenterPage: true,
              ),
              items: _containerlst.map((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        // color: e["color"],
                        color: e['color'],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          new Text(
                            e["name"],
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              new Opacity(
                                opacity: 0.5,
                                child: Text(
                                  'Net Profits of March 2020',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              new SizedBox(height: 10),
                              new Row(
                                children: [
                                  Text(
                                    '\u20B9',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    '6,000',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            new SizedBox(height: 20),
            new Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: new Row(
                children: [
                  Expanded(
                    child: Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          new Text(
                            'Mar 26,2019',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF616161)),
                          ),
                          new IconButton(
                              icon: Icon(
                                Icons.arrow_drop_down,
                              ),
                              iconSize: 40,
                              onPressed: null)
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    color: Colors.grey[300],
                    width: 2,
                  ),
                  Expanded(
                    child: Container(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          new Text(
                            'Mar 26,2019',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF616161)),
                          ),
                          new IconButton(
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 40,
                              onPressed: null)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            new SizedBox(height: 30),
            new Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFbbdefb),
                          ),
                        ),
                        new SizedBox(width: 10),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(
                              'Spending',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[500],
                              ),
                            ),
                            new Text(
                              '\u20B92450',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new SizedBox(width: 30),
                  new Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.purple[100],
                          ),
                        ),
                        new SizedBox(width: 10),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            new Text(
                              'Income',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[500],
                              ),
                            ),
                            new Text(
                              '\u20B96532',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new SizedBox(height: 30),
            new Container(
              width: MediaQuery.of(context).size.width,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    'Orders',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  new SizedBox(width: 30),
                  new Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            new Container(
              height: 230,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: new ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: orderlist.length,
                itemBuilder: (BuildContext context, int index) {
                  return _list(context, index);
                },
              ),
            ),
            new SizedBox(height: 10),
            new Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Monthly Expenses',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            new CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.8,
                height: 300,
                initialPage: 0,
                enableInfiniteScroll: false,
              ),
              items: monthlyexpenseslist.map((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.indigo[50],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: e["icon_background_color"],
                                    borderRadius: BorderRadius.circular(25)),
                                padding: EdgeInsets.all(15),
                                child: new Icon(
                                  e["icon"],
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                  icon: Icon(Icons.more_horiz), onPressed: null)
                            ],
                          ),
                          new Text(
                            e["name"],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          new RichText(
                            text: TextSpan(
                              text: 'AVG spent ',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                  text: '\u20B924,000',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue[800]),
                                ),
                                TextSpan(
                                  text: ' a week',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          new RoundedProgressBar(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            height: 45,
                            borderRadius: BorderRadius.circular(24),
                            style: RoundedProgressBarStyle(
                              borderWidth: 0,
                            ),
                            theme: e['progress_color'],
                            percent: e["percent"],
                            childLeft: Text(
                              '\u20B92.00L',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                            childRight: Text(
                              '\u20B93.00L',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                          ),
                          new Text(
                            '*   Your budget is on good Condition',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            new SizedBox(height: 30),
            new Container(
              height: 400,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.indigo[500],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Text(
                    'Remainders',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  new SizedBox(height: 20),
                  new CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      height: 300,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                    ),
                    items: _remainderlist.map((e) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.green[400],
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      padding: EdgeInsets.all(15),
                                      child: new Icon(
                                        Icons.settings,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                    ),
                                    IconButton(
                                        icon: Icon(Icons.more_horiz),
                                        onPressed: null)
                                  ],
                                ),
                                new Text(
                                  e["name"],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                new RichText(
                                  text: TextSpan(
                                    text: 'Serivce on ',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '26 Apr',
                                        style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new RichText(
                                  text: TextSpan(
                                    text: '\u20B924,000',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'Last invoice amt.',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                new FlatButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                                  color: Colors.lightBlueAccent,
                                  onPressed: () {
                                    null;
                                  },
                                  child: Text(
                                    'Vehicle Renewal',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
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
        ),
      ),
    );
  }

  Widget _list(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Center(
              child: Text(
                orderlist[index]["logotext"],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(
              color: orderlist[index]["logocolor"],
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          new SizedBox(width: 15),
          Container(
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Text(
                  orderlist[index]["name"],
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    new Text(
                      "OrderID " + orderlist[index]["id"].toString(),
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500]),
                    ),
                    new SizedBox(
                      width: 25,
                    ),
                    RichText(
                      text: TextSpan(
                        text: "\u2022",
                        style: TextStyle(
                            color: orderlist[index]["logocolor"], fontSize: 20),
                        children: [
                          TextSpan(
                            text: orderlist[index]['vehicle'],
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          new SizedBox(width: 30),
          Container(
            alignment: Alignment.topRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                new Text(
                  "\u20B9" + orderlist[index]["total"].toString(),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                new SizedBox(height: 5),
                new Text(
                  'Apr 26',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
