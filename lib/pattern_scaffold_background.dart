import 'package:flutter/material.dart';
import 'package:shape_patterns/pattern_shape.dart';

class PatternBackgroundScaffold extends StatefulWidget {

  ///This widget wraps the body of a [Scaffold] in a [Stack] widget and renders a pattern
  const PatternBackgroundScaffold({
    Key key,
    @required this.shapePattern,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomPadding = true,
    this.primary = true,
  }) : assert(primary != null), super(key: key);

  final PatternShape shapePattern;
  final PreferredSizeWidget appBar;
  final Widget body;
  final Widget floatingActionButton;
  final FloatingActionButtonLocation floatingActionButtonLocation;
  final FloatingActionButtonAnimator floatingActionButtonAnimator;
  final List<Widget> persistentFooterButtons;
  final Widget drawer;
  final Widget endDrawer;
  final Color backgroundColor;
  final Widget bottomNavigationBar;
  final Widget bottomSheet;
  final bool resizeToAvoidBottomPadding;
  final bool primary;


  @override
  _PatternBackgroundScaffoldState createState() => _PatternBackgroundScaffoldState();
}

class _PatternBackgroundScaffoldState extends State<PatternBackgroundScaffold> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: widget.appBar,
    body: _body(),
    backgroundColor: widget.backgroundColor,
    bottomNavigationBar: widget.bottomNavigationBar,
    bottomSheet: widget.bottomSheet,
    drawer: widget.drawer,
    endDrawer: widget.endDrawer,
    floatingActionButton: widget.floatingActionButton,
    floatingActionButtonAnimator: widget.floatingActionButtonAnimator,
    floatingActionButtonLocation: widget.floatingActionButtonLocation,
    key: widget.key,
    persistentFooterButtons: widget.persistentFooterButtons,
    primary: widget.primary,
    resizeToAvoidBottomPadding: widget.resizeToAvoidBottomPadding,
  );

  _body() =>  Container(
    child: Stack(
      children: <Widget>[
        widget.shapePattern,
        widget.body
      ],
    ),
  );
}
