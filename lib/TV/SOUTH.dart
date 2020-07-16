// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:kandy/TV/tvshow.dart';
// import 'package:kandy/details/tvdetails.dart';
// import 'package:kandy/homescreen/Drawer.dart';

// import 'dart:async';
// import 'package:url_launcher/url_launcher.dart';

// class TV_SOUTH extends StatefulWidget {
//   TV_SOUTH({Key key}) : super(key: key);

//   @override
//   _TV_SOUTHState createState() => _TV_SOUTHState();
// }

// class _TV_SOUTHState extends State<TV_SOUTH> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TV_SOUTHpage(),
//     );
//   }
// }

// class TV_SOUTHpage extends StatefulWidget {
//   TV_SOUTHpage({Key key}) : super(key: key);

//   @override
//   _TV_SOUTHpageState createState() => _TV_SOUTHpageState();
// }

// class _TV_SOUTHpageState extends State<TV_SOUTHpage> {
//   Future _data;
//   Future getTV_SOUTH() async {
//     var firestore = Firestore.instance;
//     QuerySnapshot gh = await firestore.collection('TV_SOUTH').getDocuments();
//     return gh.documents;
//   }

//   navigatetotvdetails(DocumentSnapshot tv) {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => Tvdetails(tv: tv)));
//   }

//   @override
//   void initState() {
//     super.initState();
//     _data = getTV_SOUTH();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Container(
//         child: FutureBuilder(
//           future: _data,
//           builder: (_, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting)
//               return Scaffold(
//                   backgroundColor: Colors.black,
//                   body: Center(
//                       child: CircularProgressIndicator(
//                     valueColor: new AlwaysStoppedAnimation<Color>(
//                         Colors.redAccent[700]),
//                   )));
//             else {
//               return Scaffold(
//                 drawer: Drawers(),
//                 appBar: AppBar(
//                   actions: <Widget>[
//                      IconButton(
//                         icon: Icon(
//                           Icons.local_movies,
//                           color: Colors.white,
//                         ),
//                         onPressed: () {
//                           Navigator.pop(context);
//                         }),
//                     IconButton(
//                         icon: Icon(
//                           Icons.search,
//                           color: Colors.white,
//                         ),
//                         onPressed: null)
//                   ],
//                   centerTitle: true,
//                   title: SizedBox(
//                       height: 50.0,
//                       child: Image.asset('images/Netflix-logo.png')),
//                   backgroundColor: Colors.black,
//                 ),
//                 backgroundColor: Colors.black,
//                 body: ListView.builder(
//                     itemCount: snapshot.data.length,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(0.0),
//                         child: SingleChildScrollView(
//                           scrollDirection: Axis.vertical,
//                           child:  Column(
//                             children: <Widget>[
//                               SizedBox(
//                                 width: MediaQuery.of(context).size.width,
//                                 height: MediaQuery.of(context).size.height / 5,
//                                 child: SingleChildScrollView(
//                                   scrollDirection: Axis.horizontal,
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(0.0),
//                                     child: Row(
//                                       children: <Widget>[
//                                         Container(
//                                           width: MediaQuery.of(context)
//                                                   .size
//                                                   .width /
//                                               4,
//                                           child: InkWell(
//                                             onTap: () => launch(snapshot
//                                                 .data[index].data['aa']),
//                                             child: CachedNetworkImage(
//                                               fit: BoxFit.fill,
//                                               imageUrl: snapshot
//                                                   .data[index].data['a'],
//                                               imageBuilder:
//                                                   (context, imageProvider) =>
//                                                       Padding(
//                                                 padding:
//                                                     const EdgeInsets.all(5.0),
//                                                 child: Container(
//                                                   width: MediaQuery.of(context)
//                                                           .size
//                                                           .width /
//                                                       4,
//                                                   decoration: BoxDecoration(
//                                                     image: DecorationImage(
//                                                       image: imageProvider,
//                                                       fit: BoxFit.fill,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               placeholder: (context, url) =>
//                                                   Center(
//                                                 child:
//                                                     CircularProgressIndicator(
//                                                   valueColor:
//                                                       new AlwaysStoppedAnimation<
//                                                               Color>(
//                                                           Colors
//                                                               .redAccent[700]),
//                                                 ),
//                                               ),
//                                               errorWidget:
//                                                   (context, url, error) =>
//                                                       Icon(Icons.error),
//                                             ),
//                                           ),
//                                         ),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['bb']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['b'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                          Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['bbb'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                        Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['cc']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['c'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['ccc'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['dd']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['d'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['ddd'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['ee']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['e'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['eee'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['ff']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['f'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['fff'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['gg']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['g'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['ggg'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['hh']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['h'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['hhh'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['ii']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['i'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['iii'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['jj']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['j'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['jjj'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['kk']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['k'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['kkk'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['ll']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['l'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['lll'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['mm']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['m'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['mmm'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['nn']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['n'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['nnn'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['oo']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['o'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['ooo'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['pp']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['p'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['ppp'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['qq']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['q'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['qqq'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['rr']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['r'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['rrr'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['ss']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['s'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['sss'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['tt']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['t'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['ttt'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['uu']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['u'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['uuu'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['vv']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['v'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['vvv'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['ww']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['w'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['www'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['xx']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['x'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['xxx'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['yy']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['y'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                            Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['yyy'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),
//                                         Stack(children: <Widget>[
//                                           Container(
//                                             width: MediaQuery.of(context)
//                                                     .size
//                                                     .width /
//                                                 2.75,
//                                             child: InkWell(
//                                               onTap: () => launch(snapshot
//                                                   .data[index].data['zz']),
//                                               child: CachedNetworkImage(
//                                                 fit: BoxFit.fill,
//                                                 imageUrl: snapshot
//                                                     .data[index].data['z'],
//                                                 imageBuilder:
//                                                     (context, imageProvider) =>
//                                                         Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(5.0),
//                                                   child: Container(
//                                                     width:
//                                                         MediaQuery.of(context)
//                                                                 .size
//                                                                 .width /
//                                                             2.75,
//                                                     decoration: BoxDecoration(
//                                                       image: DecorationImage(
//                                                         image: imageProvider,
//                                                         fit: BoxFit.contain,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 placeholder: (context, url) =>
//                                                     Center(
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                     valueColor:
//                                                         new AlwaysStoppedAnimation<
//                                                                 Color>(
//                                                             Colors.redAccent[
//                                                                 700]),
//                                                   ),
//                                                 ),
//                                                 errorWidget:
//                                                     (context, url, error) =>
//                                                         Icon(Icons.error),
//                                               ),
//                                             ),
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 const EdgeInsets.only(top: 120),
//                                             child: Center(
//                                                 child: Container(
//                                               width: MediaQuery.of(context)
//                                                       .size
//                                                       .width /
//                                                   2.75,
//                                               child: Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text(
//                                                     snapshot.data[index]
//                                                         .data['zzz'],
//                                                     style: TextStyle(backgroundColor: Colors.black,
//                                                         color: Colors.white,
//                                                         fontWeight:
//                                                             FontWeight.bold,
//                                                         fontSize: 20)),
//                                               ),
//                                             )),
//                                           )
//                                         ]),

//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
