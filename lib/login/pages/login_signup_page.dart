// import 'package:flutter/material.dart';
// import 'package:kandy/login/services/authentication.dart';

// class LoginSignupPage extends StatefulWidget {
//   LoginSignupPage({this.auth, this.loginCallback});

//   final BaseAuth auth;
//   final VoidCallback loginCallback;

//   @override
//   State<StatefulWidget> createState() => new _LoginSignupPageState();
// }

// class _LoginSignupPageState extends State<LoginSignupPage> {
//   final _formKey = new GlobalKey<FormState>();

//   String _email;
//   String _password;
//   String _errorMessage;

//   bool _isLoginForm;
//   bool _isLoading;

//   // Check if form is valid before perform login or signup
//   bool validateAndSave() {
//     final form = _formKey.currentState;
//     if (form.validate()) {
//       form.save();
//       return true;
//     }
//     return false;
//   }

//   // Perform login or signup
//   void validateAndSubmit() async {
//     setState(() {
//       _errorMessage = "";
//       _isLoading = true;
//     });
//     if (validateAndSave()) {
//       String userId = "";
//       try {
//         if (_isLoginForm) {
//           userId = await widget.auth.signIn(_email, _password);
//           print('Signed in: $userId');
//         } else {
//           userId = await widget.auth.signUp(_email, _password);
//           //widget.auth.sendEmailVerification();
//           //_showVerifyEmailSentDialog();
//           print('Signed up user: $userId');
//         }
//         setState(() {
//           _isLoading = false;
//         });

//         if (userId.length > 0 && _isLoginForm) {
//           widget.loginCallback();
//         }
//       } catch (e) {
//         print('Error: $e');
//         setState(() {
//           _isLoading = false;
//           _errorMessage = e.message;
//           _formKey.currentState.reset();
//         });
//       }
//     }
//   }

//   @override
//   void initState() {
//     _errorMessage = "";
//     _isLoading = false;
//     _isLoginForm = true;
//     super.initState();
//   }

//   void resetForm() {
//     _formKey.currentState.reset();
//     _errorMessage = "";
//   }

//   void toggleFormMode() {
//     resetForm();
//     setState(() {
//       _isLoginForm = !_isLoginForm;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         backgroundColor: Colors.black,
//         // appBar: new AppBar(
//         //   title: new Text('Flutter login demo'),
//         // ),
//         body: Stack(
//           children: <Widget>[
//             _showForm(),
//             _showCircularProgress(),
//           ],
//         ));
//   }

//   Widget _showCircularProgress() {
//     if (_isLoading) {
//       return Center(
//           child: CircularProgressIndicator(
//               valueColor:
//                   new AlwaysStoppedAnimation<Color>(Colors.redAccent[700])));
//     }
//     return Container(
//       height: 0.0,
//       width: 0.0,
//     );
//   }

// //  void _showVerifyEmailSentDialog() {
// //    showDialog(
// //      context: context,
// //      builder: (BuildContext context) {
// //        // return object of type Dialog
// //        return AlertDialog(
// //          title: new Text("Verify your account"),
// //          content:
// //              new Text("Link to verify account has been sent to your email"),
// //          actions: <Widget>[
// //            new FlatButton(
// //              child: new Text("Dismiss"),
// //              onPressed: () {
// //                toggleFormMode();
// //                Navigator.of(context).pop();
// //              },
// //            ),
// //          ],
// //        );
// //      },
// //    );
// //  }

//   Widget _showForm() {
//     return new Container(
//         padding: EdgeInsets.all(16.0),
//         child: new Form(
//           key: _formKey,
//           child: new ListView(
//             shrinkWrap: true,
//             children: <Widget>[
//               showLogo(),
//               SizedBox(
//                 height: 80.0,
//               ),
//               showEmailInput(),
//               showPasswordInput(),
//               showPrimaryButton(),
//               // showSecondaryButton(),
//               showErrorMessage(),
//             ],
//           ),
//         ));
//   }

//   Widget showErrorMessage() {
//     if (_errorMessage.length > 0) {
//       return new Text(
//         _errorMessage,
//         style: TextStyle(
//             fontSize: 13.0,
//             color: Colors.red,
//             height: 1.0,
//             fontWeight: FontWeight.w300),
//       );
//     } else {
//       return new Container(
//         height: 0.0,
//       );
//     }
//   }

//   Widget showLogo() {
//     return new Hero(
//       tag: 'hero',
//       child: Padding(
//         padding: EdgeInsets.fromLTRB(0.0, 00.0, 0.0, 0.0),
//         child: CircleAvatar(
//           backgroundColor: Colors.transparent,
//           radius: 28.0,
//           child: Image.asset('images/Netflix-logo.png'),
//         ),
//       ),
//     );
//   }

//   Widget showEmailInput() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
//       child: new TextFormField(
//         style: TextStyle(color: Colors.white),
//         cursorColor: Colors.red,
//         maxLines: 1,
//         keyboardType: TextInputType.emailAddress,
//         autofocus: false,
//         decoration: new InputDecoration(
//             hintText: 'Email',
//             hintStyle: TextStyle(color: Colors.white),
//             icon: new Icon(
//               Icons.mail,
//               color: Colors.grey,
//             )),
//         validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
//         onSaved: (value) => _email = value.trim(),
//       ),
//     );
//   }

//   Widget showPasswordInput() {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
//       child: new TextFormField(
//         style: TextStyle(color: Colors.white),
//         maxLines: 1,
//         obscureText: true,
//         autofocus: false,
//         decoration: new InputDecoration(
//             hintText: 'Password',
//             hintStyle: TextStyle(color: Colors.white),
//             icon: new Icon(
//               Icons.lock,
//               color: Colors.grey,
//             )),
//         validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
//         onSaved: (value) => _password = value.trim(),
//       ),
//     );
//   }

//   Widget showSecondaryButton() {
//     return new FlatButton(
//         child: new Text(
//             _isLoginForm ? 'Create an account' : 'Have an account? Sign in',
//             style: new TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.white,
//                 fontWeight: FontWeight.w300)),
//         onPressed: () {});
//     // onPressed: toggleFormMode);
//   }

//   Widget showPrimaryButton() {
//     return new Padding(
//         padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
//         child: SizedBox(
//           height: 40.0,
//           child: new RaisedButton(
//             elevation: 5.0,
//             shape: new RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(10.0)),
//             color: Colors.redAccent[700],
//             child: new Text(_isLoginForm ? 'Login' : 'Create account',
//                 style: new TextStyle(fontSize: 20.0, color: Colors.white)),
//             onPressed: validateAndSubmit,
//           ),
//         ));
//   }
// }
