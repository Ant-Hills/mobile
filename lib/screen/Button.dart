import 'package:flutter/material.dart';

/// Creates a button that can be used to send information given
/// the (sender) function, and the label of the button (labelText).
class SendButtonInfo extends StatefulWidget {
  final String labelText;
  final VoidCallback sendDetails;
  SendButtonInfo({
    @required this.labelText,
    @required this.sendDetails,
  });

  @override
  _ButtonState createState() => _ButtonState();
}

/// Creates a button that matches the size of the phone screen.
/// The button has a blue background color, and it prints
/// labelText onto the button in black text.
class _ButtonState extends State<SendButtonInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      child: RaisedButton(
        color: Colors.blue,
          child: Text(
              widget.labelText,
              style: TextStyle(
                fontSize: 15,
                backgroundColor: Colors.blue,
              )
          ),
          onPressed: widget.sendDetails,
        ),
    );
  }
}