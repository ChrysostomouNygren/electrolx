import 'package:flutter/material.dart';

class SelectableItem extends StatefulWidget {
  final String title;
  final String subtitle;
const SelectableItem(this.title, this.subtitle, {super.key});

  @override
  State<SelectableItem> createState() => _SelectableItemState();
}

class _SelectableItemState extends State<SelectableItem> {
bool isChecked = false;

  void _onCheck() {
    setState(() {
      
  isChecked = !isChecked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){_onCheck();}, child: ListTile(title: Text(widget.title), subtitle: isChecked ? Text(widget.subtitle) : const SizedBox.shrink(),));
  }
}