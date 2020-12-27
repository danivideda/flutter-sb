import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  TextInputWidget(this.callback);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final TextEditingController controller = new TextEditingController();

  @override
  void dispose() {
    super.dispose();
    this.controller.dispose();
  }

  void click() {
    widget.callback(this.controller.text);
    this.controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.message_outlined),
                labelText: 'Some text here please',
                suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    splashColor: Colors.orange[100],
                    tooltip: "Post a message",
                    onPressed: this.click)),
          ),
        ),
      ],
    );
  }
}