import 'package:flutter/material.dart';

class SelectableItem extends StatefulWidget {
  final String title;
  final String subtitle;
  final String asset;
  final int index;
  final bool enable;
  
  const SelectableItem(this.title, this.subtitle, this.asset, this.index, this.enable, {super.key});

  @override
  State<SelectableItem> createState() => _SelectableItemState();
}

class _SelectableItemState extends State<SelectableItem> {
  bool showSubtitle = false;
  bool? disable;

  void _onCheck() {
    setState(() {
      showSubtitle = true;

    });
  }

  void _disable(){
    setState(() {
      disable = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        _onCheck();
        _disable();
      },
      title: Text(widget.title),
      subtitle: showSubtitle ? Text(widget.subtitle) : null,
      leading: Image.asset(widget.asset),
      enabled: disable == null ? widget.enable : disable!,
    );
  }
}