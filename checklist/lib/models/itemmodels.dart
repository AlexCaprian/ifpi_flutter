import 'package:flutter/material.dart';

class CheckBoxModel {
  CheckBoxModel({required this.texto, this.checked = false});

  String texto;
  bool checked;
}

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key, required this.item}) : super(key: key);

  final CheckBoxModel item;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.texto),
      value: widget.item.checked,
      onChanged: (value) {
        setState(() {
          widget.item.checked = value!;
        });
      },
    );
  }
}
