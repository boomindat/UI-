import 'package:flutter/material.dart';

enum ProductTypeEnum { Downloadable, Deliverable }

class MyRadioButton extends StatelessWidget {
  MyRadioButton(
      {Key? key,
      required this.title,
      required this.value,
      required this.productTypeEnum,
      required this.onChanged})
      : super(key: key);
  String title;
  ProductTypeEnum value;
  ProductTypeEnum? productTypeEnum;
  Function(ProductTypeEnum?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
          contentPadding: EdgeInsets.all(0.0),
          value: value,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          dense: true,
          tileColor: Colors.deepPurple.shade50,
          title: Text(title),
          groupValue: productTypeEnum,
          onChanged: onChanged),
    );
  }
}
