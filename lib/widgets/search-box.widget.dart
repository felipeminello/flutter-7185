import 'package:flutter/material.dart';
import 'package:shopping/widgets/animated-input.widget.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  bool menuOpened = false;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this, // referente ao SingleTickerProviderStateMixin
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  // evitar memory lick
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 8,
          child: AnimatedInput(
            controller: _controller,
            context: context,
          ),
        ),
        Expanded(
          flex: 2,
          child: FlatButton(
            onPressed: () {
              !menuOpened ? _controller.forward() : _controller.reverse();
              menuOpened = !menuOpened;
            },
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _controller,
              semanticLabel: 'More',
            ),
          ),
        ),
      ],
    );
  }
}
