import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kandy/TV/tvshow.dart';
import 'package:kandy/button_tv.dart';
import 'package:kandy/details/tvdetails.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:kandy/homescreen/carousel.dart';
import 'package:kandy/page/BANGLA.dart';
import 'package:kandy/page/BOLLYWOOD.dart';
import 'package:kandy/page/ENGLISH.dart';
import 'package:kandy/page/HINDI_DUBBED.dart';
import 'package:kandy/page/SOUTH.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

import '../drawcopy.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Homepagepage(),
    );
  }
}

class Homepagepage extends StatefulWidget {
  Homepagepage({Key key}) : super(key: key);

  @override
  _HomepagepageState createState() => _HomepagepageState();
}

class _HomepagepageState extends State<Homepagepage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;

  initUser() async {
    user = await _auth.currentUser();
    setState(() {});
  }

  Future _data;
  Future getHomepage() async {
    var firestore = Firestore.instance;
    QuerySnapshot gh = await firestore.collection('Homepage').getDocuments();
    return gh.documents;
  }

  navigatetotvdetails(DocumentSnapshot tv) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Tvdetails(tv: tv)));
  }

  @override
  void initState() {
    super.initState();
    initUser();
    _data = getHomepage();
  }

  void showSimpleCustomDialog(BuildContext context) {
    Dialog simpleDialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        height: 150.0,
        width: 300.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "${user?.email}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Okay',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel!',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    showDialog(
        context: context, builder: (BuildContext context) => simpleDialog);
  }

  bool _vsual = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: FutureBuilder(
          future: _data,
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Scaffold(
                  backgroundColor: Colors.black,
                  body: Center(
                      child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(
                        Colors.redAccent[700]),
                  )));
            else {
              return MaterialApp(
                  home: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Cover2(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                        ),
                        Divider(),
                        Cover2(
                          onFocus: () {
                            setState(() => _vsual = !_vsual);
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Homepage()));
                                  }),
                            ),
                          ),
                        ),
                        Cover2(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.tv,
                                    color: Colors.white,
                                  ),
                                  onPressed: null),
                            ),
                          ),
                        ),
                        Cover2(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  onPressed: null),
                            ),
                          ),
                        ),
                        Cover2(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.account_circle,
                                    color: Colors.white,
                                  ),
                                  onPressed: null),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 170,
                        ),
                        Cover2(
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: IconButton(
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                  onPressed: null),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: _vsual ? true : false,
                  child: Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.grey[900],
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(height: 50),
                          Divider(
                            color: Colors.white,
                          ),
                          Cover2(
                            child: Container(
                              height: 10,
                              width: double.infinity,
                              child: Center(
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  HINDI_DUBBED(),
                                            ));
                                      },
                                      child: Text(
                                        'HINDI DUBBED',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ))),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Cover2(
                            child: Container(
                              height: 10,
                              width: double.infinity,
                              child: Center(
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => ENGLISH(),
                                            ));
                                      },
                                      child: Text(
                                        'ENGLISH',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ))),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Cover2(
                            child: Container(
                              height: 10,
                              width: double.infinity,
                              child: Center(
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => BOLLYWOOD(),
                                            ));
                                      },
                                      child: Text(
                                        'BOLLYWOOD',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ))),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Cover2(
                            child: Container(
                              height: 10,
                              width: double.infinity,
                              child: Center(
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SOUTH(),
                                            ));
                                      },
                                      child: Text(
                                        'SOUTH DUBBED',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ))),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Cover2(
                            child: Container(
                              height: 10,
                              width: double.infinity,
                              child: Center(
                                  child: FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => BANGLA(),
                                            ));
                                      },
                                      child: Text(
                                        'BANGLA',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ))),
                            ),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 17,
                  child: Scaffold(
                    appBar: PreferredSize(
                      preferredSize:
                          Size.fromHeight(30.0), // here the desired height
                      child: AppBar(
                        centerTitle: true,
                        title: SizedBox(
                            height: 40.0,
                            child: Image.asset('images/Netflix-logo.png')),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    backgroundColor: Colors.black,
                    body: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height / 2,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                18,
                                            child: Container(
                                              width: double.infinity,
                                              color: Colors.black54,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Text(
                                                  snapshot
                                                      .data[index].data['hd'],
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                1.5,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(0.0),
                                              child: SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onFocus: () {
                                                          setState(() =>
                                                              _vsual = !_vsual);
                                                        },
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['aa']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['a'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['bb']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['b'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['cc']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['c'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['dd']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['d'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['ee']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['e'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['ff']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['f'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['gg']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['g'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['hh']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['h'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['ii']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['i'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['jj']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['j'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['kk']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['k'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['ll']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['l'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['mm']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['m'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['nn']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['n'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['oo']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['o'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['pp']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['p'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['qq']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['q'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['rr']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['r'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['ss']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['s'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['tt']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['t'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['uu']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['u'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['vv']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['v'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['ww']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['w'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['xx']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['x'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['yy']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['y'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              2,
                                                      child: Cover(
                                                        onTap: () => launch(
                                                            snapshot.data[index]
                                                                .data['zz']),
                                                        child:
                                                            CachedNetworkImage(
                                                          fit: BoxFit.fill,
                                                          imageUrl: snapshot
                                                              .data[index]
                                                              .data['z'],
                                                          imageBuilder: (context,
                                                                  imageProvider) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width /
                                                                  4,
                                                              decoration:
                                                                  BoxDecoration(
                                                                image:
                                                                    DecorationImage(
                                                                  image:
                                                                      imageProvider,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          placeholder:
                                                              (context, url) =>
                                                                  Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  new AlwaysStoppedAnimation<
                                                                          Color>(
                                                                      Colors.redAccent[
                                                                          700]),
                                                            ),
                                                          ),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              Icon(Icons.error),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                )
              ]));
            }
          },
        ),
      ),
    );
  }
}
