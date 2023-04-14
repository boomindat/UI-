import "package:flutter/material.dart";

Padding listTileWidget() {
  return Padding(
      padding: EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: Colors.black12,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        leading: IconButton(
          icon: Icon(Icons.mouse_outlined),
          onPressed: () {},
          color: Colors.blueAccent,
        ),
        title: Text("Mouse",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
        subtitle: Text("Click me!!!"),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart_outlined),
          onPressed: () {},
        ),
      ));
}

class ListTileWidget extends StatelessWidget {
  String title, subtitle;
  IconData leadingIcon, trailingIcon;
  Color? listTileColor, iconColor;
  ListTileWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      this.leadingIcon = Icons.label,
      this.trailingIcon = Icons.add_shopping_cart,
      this.listTileColor,
      this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: ListTile(
          tileColor: this.listTileColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          leading: IconButton(
            icon: Icon(this.leadingIcon),
            onPressed: () {},
            color: this.iconColor,
          ),
          title: Text(this.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
          subtitle: Text(this.subtitle),
          trailing: IconButton(
            icon: Icon(this.trailingIcon),
            onPressed: () {},
          ),
        ));
  }
}
