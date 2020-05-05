import 'package:flutter/material.dart';

/// Contains username and password form fields.
/// Note: Password and username are sent as a token
/// to the database in order to authenticate the user.
/// Encryption Method: AES-256.
class UserInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgets = [Username(), Password(), Button()];
    // creates a username and password textfield based on
    // the users' screen.
    return Container(
      width: MediaQuery.of(context).size.width/1.5,
      child: ListView(
        children: _widgets,
      ),
    );
  }
}

/// Button class field that sends a token to
/// the database.
class Button extends StatelessWidget {

  Widget sendToken() {

  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: sendToken,
      color: Colors.blue,
      child: const Text(
        'Login',
        style: TextStyle(
            fontSize: 15,
            backgroundColor: Colors.blue,
        ),
      )
    );
  }
}

/// Password form field that asks for password from user.
class Password extends StatefulWidget {
  @override
  _PasswordWidget createState() => _PasswordWidget();
}

class _PasswordWidget extends State<Password> {
  bool _obscureText = true;

  String _password;

  // show password
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                icon: _obscureText ? Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                ) :
                Icon(
                    Icons.remove_red_eye,
                    color: Colors.blue,
                ),
                onPressed: _toggle,
              ),
            ),

            validator: (val) => val.length < 6 ? 'Password too short.' : null,
            onSaved: (val) => _password = val,
            obscureText: _obscureText,
          ),
        ],
      ),
    );
  }
}

/// Username form field that is asked from the user.
class Username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username',
      ),
    );
  }
}

