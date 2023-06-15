import 'package:flutter/material.dart';

class AlphaTile extends StatefulWidget {
  Widget? leading;
  Widget? trailing;
  Text? title;
  Text? subTitle;
  double? borderRadius;
  Color? selectedColor;
  Color? iconColor;
  Color? textColor;
  EdgeInsetsGeometry? contentPadding;
  bool enabled = true;
  void Function()? onTap;
  void Function()? onLongPress;
  bool selected = false;
  Color? tileColor;
  Color? selectedTileColor;
  double? horizontalTitleGap;
  double? minVerticalPadding;
  double? minLeadingWidth;
  double? elevation;
  Color? shadowColor;
  AlphaTile({super.key});

  @override
  State<AlphaTile> createState() => _AlphaTileState();
}

class _AlphaTileState extends State<AlphaTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.elevation ?? 1.1,
      shadowColor: widget.shadowColor ?? Colors.black,
      child: ListTile(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 12)),
        leading: widget.leading ?? const SizedBox(),
        title: widget.title ?? const SizedBox(),
        subtitle: widget.title ?? const SizedBox(),
        trailing: widget.trailing ?? const SizedBox(),
        tileColor: widget.tileColor ?? Colors.white,
        selectedColor: widget.selectedColor ?? Colors.grey,
        iconColor: widget.iconColor ?? Colors.black,
        textColor: widget.textColor ?? Colors.black,
        contentPadding: widget.contentPadding ?? const EdgeInsets.all(4),
        enabled: widget.enabled,
        selectedTileColor: widget.selectedTileColor,
        selected: widget.selected,
        horizontalTitleGap: widget.horizontalTitleGap,
        minVerticalPadding: widget.minVerticalPadding,
        minLeadingWidth: widget.minLeadingWidth,
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
      ),
    );
  }
}
