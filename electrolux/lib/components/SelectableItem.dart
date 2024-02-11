import 'package:flutter/material.dart';

class SelectableItem extends StatefulWidget {
  final String title;
const SelectableItem(String this.title,);

  @override
  State<SelectableItem> createState() => _SelectableItemState();
}

class _SelectableItemState extends State<SelectableItem> {
bool isChecked = false;

  void _onCheck() {
    setState(() {
      
  isChecked = !isChecked;
    });
    print(widget.title);
  }
  @override
  Widget build(BuildContext context) {
    return Row(children: [Text(widget.title), Checkbox(value: isChecked, onChanged: (bool? value){_onCheck();})],);
  }
}