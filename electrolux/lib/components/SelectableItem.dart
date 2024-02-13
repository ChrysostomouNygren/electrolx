import 'package:flutter/material.dart';

class SelectableItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String asset;
  final int index;
  
  const SelectableItem(this.title, this.subtitle, this.asset, this.index, {super.key});

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
    return ListTile(
      onTap: () {
        _onCheck();
      },
      title: Text(widget.title),
      subtitle: isChecked ? Text(widget.subtitle) : null,
      leading: Image.asset(widget.asset),
      // fix this in the morning pls :)
      // *******************************
      enabled: isChecked ? true : false,
      // *******************************
    );
  }
}