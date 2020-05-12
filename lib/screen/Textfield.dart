import 'package:flutter/material.dart';

/// Creates a generic TextFieldForm given the label of the button (labelText)
/// and a boolean (obscurity).
/// Note: obscurity means whether the text typed should be hidden or not.
class TextFieldForm extends StatefulWidget {
  final String labelText;
  final bool isHidden;
  final TextEditingController controller;
  TextFieldForm({
    @required this.labelText,
    @required this.controller,
    @required this.isHidden,
  });

  @override
  _TextFieldState createState() => _TextFieldState();
}

/// Defines the a textfield given the information in TextFieldForm.
/// Note: the textfield matches the size of the screen
class _TextFieldState extends State<TextFieldForm>{
  bool _hidden = true;

  // disposes all information from the controllers after app is closed.
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  void _showPassword() {
    setState(() {
      _hidden = !_hidden;
    });
  }

  Widget showPasswordIcon() {
      return IconButton(
        icon: _hidden ? Icon(
          Icons.remove_red_eye,
          color: Colors.grey,
        ) :
        Icon(
          Icons.remove_red_eye,
          color: Colors.blue,
    ), onPressed: _showPassword,
    );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
        child: TextFormField(
          obscureText: widget.isHidden ? _hidden : widget.isHidden,
          controller: widget.controller,
          decoration: InputDecoration(
            labelText: widget.labelText,
            suffixIcon: widget.isHidden ? showPasswordIcon() : null,
            ),
          ),
      );

  }
}