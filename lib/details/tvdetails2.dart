import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:url_launcher/url_launcher.dart';

class Tvdetails2 extends StatefulWidget {
  final DocumentSnapshot tv;
  Tvdetails2({this.tv});

  @override
  _Tvdetails2State createState() => _Tvdetails2State();
}

class _Tvdetails2State extends State<Tvdetails2> {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey3 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey4 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey5 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey6 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey7 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey8 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey9 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey10 = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: 300,
                  child:
                      Container(child: Image.network(widget.tv.data['TVBG']))),
              SizedBox(
                  height: 150,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Card(
                      color: Colors.black,
                      child: ListTile(
                        title: Text(widget.tv.data['name'],
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.0)),
                        subtitle: Text(widget.tv.data['des'],
                            style:
                                TextStyle(color: Colors.grey, fontSize: 17.0)),
                      ),
                    ),
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey,
                    frontWidget: _buildFrontWidget(),
                    innerTopWidget: _buildInnerTopWidget(),
                    innerBottomWidget: _buildInnerBottomWidget(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),

              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey2,
                    frontWidget: _buildFrontWidget2(),
                    innerTopWidget: _buildInnerTopWidget2(),
                    innerBottomWidget: _buildInnerBottomWidget2(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),

              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey3,
                    frontWidget: _buildFrontWidget3(),
                    innerTopWidget: _buildInnerTopWidget3(),
                    innerBottomWidget: _buildInnerBottomWidget3(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),

              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey4,
                    frontWidget: _buildFrontWidget4(),
                    innerTopWidget: _buildInnerTopWidget4(),
                    innerBottomWidget: _buildInnerBottomWidget4(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey5,
                    frontWidget: _buildFrontWidget5(),
                    innerTopWidget: _buildInnerTopWidget5(),
                    innerBottomWidget: _buildInnerBottomWidget5(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey6,
                    frontWidget: _buildFrontWidget6(),
                    innerTopWidget: _buildInnerTopWidget6(),
                    innerBottomWidget: _buildInnerBottomWidget6(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey7,
                    frontWidget: _buildFrontWidget7(),
                    innerTopWidget: _buildInnerTopWidget7(),
                    innerBottomWidget: _buildInnerBottomWidget7(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey8,
                    frontWidget: _buildFrontWidget8(),
                    innerTopWidget: _buildInnerTopWidget8(),
                    innerBottomWidget: _buildInnerBottomWidget8(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey9,
                    frontWidget: _buildFrontWidget9(),
                    innerTopWidget: _buildInnerTopWidget9(),
                    innerBottomWidget: _buildInnerBottomWidget9(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),
              SizedBox(height: 10.0),
              Container(
                  color: Color(0xFF2e282a),
                  alignment: Alignment.center,
                  child: SimpleFoldingCell(
                    key: _foldingCellKey10,
                    frontWidget: _buildFrontWidget10(),
                    innerTopWidget: _buildInnerTopWidget10(),
                    innerBottomWidget: _buildInnerBottomWidget10(),
                    cellSize: Size(MediaQuery.of(context).size.height, 290),
                    padding: EdgeInsets.all(0),
                    animationDuration: Duration(milliseconds: 300),
                    borderRadius: 10,
                  )),

              ////////////////
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFrontWidget() {
    return GestureDetector(
      onTap: () => _foldingCellKey?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s1bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s1de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget() {
    
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch(widget.tv.data['s1pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-1",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['tariler1']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer1']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '1',
                  onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget2() {
    return GestureDetector(
      onTap: () => _foldingCellKey2?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s2bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s2de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget2() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child:GestureDetector(
            onTap: () => launch(widget.tv.data['s2pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget2() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['Trailer2']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer2']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '2',
                  onPressed: () => _foldingCellKey2?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget3() {
    return GestureDetector(
      onTap: () => _foldingCellKey3?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s3bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-3',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s3de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget3() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch(widget.tv.data['s3pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-3",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget3() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer3']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer3']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '3',
                  onPressed: () => _foldingCellKey3?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget4() {
    return GestureDetector(
      onTap: () => _foldingCellKey4?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s4bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-4',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s4de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget4() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch(widget.tv.data['s4pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-4",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget4() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer4']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer4']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '4',
                  onPressed: () => _foldingCellKey4?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }
//////////////////////////////////
  Widget _buildFrontWidget5() {
    return GestureDetector(
      onTap: () => _foldingCellKey5?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s5bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-5',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s5de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget5() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child:GestureDetector(
            onTap: () => launch(widget.tv.data['s5pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-5",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget5() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer5']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer5']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '5',
                  onPressed: () => _foldingCellKey5?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget6() {
    return GestureDetector(
      onTap: () => _foldingCellKey6?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s6bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-6',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s6de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget6() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch(widget.tv.data['s6pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-6",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget6() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer6']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer6']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '6',
                  onPressed: () => _foldingCellKey6?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget7() {
    return GestureDetector(
      onTap: () => _foldingCellKey7?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s7bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-7',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s7de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget7() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child:GestureDetector(
            onTap: () => launch(widget.tv.data['s7pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-7",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget7() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer7']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer7']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '7',
                  onPressed: () => _foldingCellKey7?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget8() {
    return GestureDetector(
      onTap: () => _foldingCellKey8?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s8bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-8',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s8de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget8() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child:GestureDetector(
            onTap: () => launch(widget.tv.data['s8pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-8",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget8() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer8']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer8']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '8',
                  onPressed: () => _foldingCellKey8?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

  ///////////
  Widget _buildFrontWidget9() {
    return GestureDetector(
      onTap: () => _foldingCellKey9?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s9bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-9',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s9de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget9() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch(widget.tv.data['s9pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-9",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget9() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer9']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer9']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '9',
                  onPressed: () => _foldingCellKey9?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }

//////////////////////////////////////////////////
  Widget _buildFrontWidget10() {
    return GestureDetector(
      onTap: () => _foldingCellKey10?.currentState?.toggleFold(),
      child: Container(
          height: 100,
          color: Colors.black,
          alignment: Alignment.center,
          child: SizedBox(
              height: 300,
              child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Row(children: <Widget>[
                    Container(child: Image.network(widget.tv.data['s10bg'])),
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Card(
                              color: Colors.black,
                              child: Text('Season-10',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: <Widget>[
                                Card(
                                  color: Colors.black,
                                  child: Text(widget.tv.data['s10de'],
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.0)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])))),
    );
  }

  Widget _buildInnerTopWidget10() {
    return Container(
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => launch(widget.tv.data['s10pl']),
            child: Card(
                color: Colors.black,
                child: Text("SEASON-10",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold))),
          ),
        ));
  }

  Widget _buildInnerBottomWidget10() {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: 160,
                        color: Colors.black,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer10']),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Trailer #1',
                                    style: TextStyle(
                                        fontSize: 50, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () => launch(widget.tv.data['trailer10']),
                              child: Icon(
                                Icons.videocam,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  heroTag: '',
                  onPressed: () =>
                      _foldingCellKey10?.currentState?.toggleFold(),
                  child: Icon(Icons.close),
                  splashColor: Colors.white.withOpacity(0.5),
                ),
              ),
            ],
          )),
    );
  }
  ///////////

}
