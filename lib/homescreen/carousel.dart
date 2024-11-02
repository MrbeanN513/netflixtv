// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:cached_network_image/cached_network_image.dart';
// import 'dart:async';
// import 'package:url_launcher/url_launcher.dart';

// class POSTER extends StatefulWidget {
//   POSTER({Key key}) : super(key: key);

//   @override
//   _POSTERState createState() => _POSTERState();
// }

// class _POSTERState extends State<POSTER> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: POSTERpage(),
//     );
//   }
// }

// class POSTERpage extends StatefulWidget {
//   POSTERpage({Key key}) : super(key: key);

//   @override
//   _POSTERpageState createState() => _POSTERpageState();
// }

// class _POSTERpageState extends State<POSTERpage> {
//   Future _data;
//   Future getPOSTER() async {
//     var firestore = Firestore.instance;
//     QuerySnapshot gh = await firestore.collection('POSTER').getDocuments();
//     return gh.documents;
//   }

//   @override
//   void initState() {
//     super.initState();

//     _data = getPOSTER();
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
//               return SizedBox(
//                 height: MediaQuery.of(context).size.height / 4.5,
//                 child: Container(
//                   color: Colors.black,
//                   child: CarouselSlider.builder(
//                       options: CarouselOptions(
//                         height: MediaQuery.of(context).size.height / 4.5,
//                         enableInfiniteScroll: true,
//                         enlargeCenterPage: true,
//                       ),
//                       itemCount: snapshot.data.length,
//                       itemBuilder: (context, index) {
//                         return Carousel(
//                           autoplay: true,
//                           boxFit: BoxFit.fill,
//                           animationCurve: Curves.linearToEaseOut,
//                           animationDuration: Duration(milliseconds: 1000),
//                           showIndicator: false,
//                           images: [
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['aa']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['a'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['aa']),
//                               child: CachedNetworkImage(
//                                 fit: BoxFit.fill,
//                                 imageUrl: snapshot.data[index].data['b'],
//                                 imageBuilder: (context, imageProvider) =>
//                                     Padding(
//                                   padding: const EdgeInsets.all(15.0),
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       image: DecorationImage(
//                                         image: imageProvider,
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 placeholder: (context, url) => Center(
//                                   child: CircularProgressIndicator(
//                                     valueColor:
//                                         new AlwaysStoppedAnimation<Color>(
//                                             Colors.redAccent[700]),
//                                   ),
//                                 ),
//                                 errorWidget: (context, url, error) =>
//                                     Icon(Icons.error),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['cc']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['c'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['dd']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['d'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['ee']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['e'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['ff']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['f'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['gg']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['g'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['hh']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['h'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['ii']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['i'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['jj']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['j'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['kk']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['k'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['ll']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['l'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['mm']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['m'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['nn']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['n'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['oo']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['o'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['pp']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['p'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['qq']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['q'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['rr']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['r'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['ss']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['s'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['tt']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['t'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['uu']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['u'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['vv']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['v'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['ww']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['w'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['xx']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['x'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['yy']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['y'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                             InkWell(
//                               onTap: () =>
//                                   launch(snapshot.data[index].data['zz']),
//                               child: Material(
//                                 elevation: 60,
//                                 color: Colors.transparent,
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.scaleDown,
//                                   imageUrl: snapshot.data[index].data['z'],
//                                   imageBuilder: (context, imageProvider) =>
//                                       Padding(
//                                     padding: const EdgeInsets.all(15.0),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.fill,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   placeholder: (context, url) => Center(
//                                     child: CircularProgressIndicator(
//                                       valueColor:
//                                           new AlwaysStoppedAnimation<Color>(
//                                               Colors.redAccent[700]),
//                                     ),
//                                   ),
//                                   errorWidget: (context, url, error) =>
//                                       Icon(Icons.error),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         );
//                       }),
//                 ),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
