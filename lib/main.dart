import 'package:flutter/material.dart';
import 'package:simple_ui/driverpage.dart';
import 'package:simple_ui/homepage.dart';
import 'package:simple_ui/trackpage.dart';
import 'package:simple_ui/trippage.dart';
import 'package:simple_ui/vehiclepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTabIndex=0;
  final tabpages = <Widget>[
    homepage(),
    trippage(),
    driverpage(),
    vehiclepage(),
    trackpage()
  ];
  final bottomNavbarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
    BottomNavigationBarItem(icon: Icon(Icons.map), title: Text('Trip')),
    BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Driver')),
    BottomNavigationBarItem(icon: Icon(Icons.local_shipping), title: Text('Vehicle')),
    BottomNavigationBarItem(icon: Icon(Icons.gps_fixed), title: Text('Track')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabpages[currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavbarItems,
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(
                  color: Colors.white, style: BorderStyle.solid, width: 3)),
          onPressed: null,
          tooltip: 'add new',
          child: Icon(
            Icons.add,
            size: 25,
          ),
        ),
      ),
    );
  }
}
