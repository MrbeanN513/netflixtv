import 'package:flutter/material.dart';

class Cover extends StatefulWidget {
  const Cover({
    Key key,
    @required this.onTap,
    this.onFocus,
    this.child,
    this.onLongPress,
  }) : super(key: key);
  final Widget child;
  final Function onTap;
  final Function onFocus;
  final Function onLongPress;
  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> with SingleTickerProviderStateMixin {
  FocusNode _node;
  AnimationController _controller;
  Animation<double> _animation;
  int _focusAlpha = 100;

  Widget image;

  @override
  void initState() {
    _node = FocusNode();

    _node.addListener(_onFocusChange);
    _controller = AnimationController(
        duration: const Duration(milliseconds: 10),
        vsync: this,
        lowerBound: 0.9,
        upperBound: 1);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _node.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (_node.hasFocus) {
      _controller.forward();
      setState(() => _ami = !_ami);

      if (widget.onFocus != null) {
        widget.onFocus();
      }
    } else {
      _controller.reverse();
      setState(() => _ami = false);
    }
  }

  bool _ami = false;

  void _onTap() {
    _node.requestFocus();
    if (widget.onTap != null) {
      widget.onTap();
    }
  }

  void _onLongPress() {
    _node.requestFocus();
    if (widget.onLongPress != null) {
      widget.onLongPress();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      hoverColor: Colors.black,
      onLongPress: _onLongPress,
      onPressed: _onTap,
      focusNode: _node,
      focusColor: Colors.transparent,
      focusElevation: 0,
      child: buildCover(context),
    );
  }

  Widget buildCover(BuildContext context) {
    return GestureDetector(
      onLongPress: _onLongPress,
      onTap: _onTap,
      child: Column(
        children: <Widget>[
          Container(
            child: Container(
              // margin: EdgeInsets.symmetric(vertical: 20.0),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 3.5,
              child: Container(
                decoration: _ami
                    ? BoxDecoration(
                        border: Border.all(
                          width: 10,
                          color: Colors.redAccent[700],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)))
                    : BoxDecoration(
                        border: Border.all(width: 0, color: Colors.transparent),
                      ),
                child: widget.child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
