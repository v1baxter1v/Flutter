//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: EDteamHome(),
    );
  }
}

class EDteamHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          title: Image.asset(
            "assets/images/fenix.png",
            height: 40.0,
          ),
          actions: <Widget>[
            InkWell(
              child: Image.asset(
                "assets/images/Udyr.png",
                height: 40.0,
              ),
              onTap: () {
                print("hola Mundo");
              },
            ),
            //onTap: (){print("Hola Mundo!");},
            InkWell(
              child: Image.asset(
                "assets/images/AZTEK.png",
                height: 40.0,
              ),
              onTap: () {
                print("hola Mundo");
              },
            ),
            Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(Icons.dehaze),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Continúa Estudiando",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              height: 150.0,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (contex, position) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200.0,
                        height: 150.0,
                        color: Colors.blue,
                        child: Text("Posicion $position"),
                      ),
                    );
                  }),
            ),
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.red,
                      tabs: [
                        Tab(text: "Cursos"),
                        Tab(text: "Workbocks"),
                        Tab(text: "Especialidades"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          //Container(color: Colors.red),
                          GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemBuilder: (contex, position) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 200.0,
                                  height: 150.0,
                                  color: Colors.grey,
                                  child: Text("Posicion $position"),
                                ),
                              );
                            },
                          ),
                          Container(color: Colors.blue),
                          Container(color: Colors.yellow),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
    //return Container(color: Colors.blueGrey[50];
  }
}
