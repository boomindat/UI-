import 'package:clickcounter/model/product_model.dart';
import 'package:clickcounter/widgets/my_button.dart';
import 'package:clickcounter/widgets/my_radio_button.dart';
import 'package:clickcounter/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _productName;
  final _productController = TextEditingController();
  final _productDesController = TextEditingController();
  ProductTypeEnum? _productTypeEnum;
  final _productSizesList = ["Small", "Medium", "Large", "XLarge"];
  String? _selectedVal;
  bool? _checkBox = false;
  bool? _listTileCheckBox = false;
  _MyFormState() {
    _selectedVal = _productSizesList[0];
  }
  final _formKey = GlobalKey<FormState>();
  // @override
  // void initState() {
  //   super.initState();
  //   _productController.addListener(_updateText);
  // }
  @override
  void dispose() {
    _productController.dispose();
    super.dispose();
  }

  void _updateText() {
    // setState(() {
    //   _productName = _productController.text;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Form"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                child: Column(children: [
                  MyTextField(
                      myController: _productController,
                      fieldName: "Product Name",
                      myIcon: Icons.propane_outlined,
                      prefixIconColor: Colors.deepPurple.shade300),
                  const SizedBox(
                    height: 20.0,
                  ),
                  MyTextField(
                      myController: _productDesController,
                      fieldName: "Product Description",
                      myIcon: Icons.description_outlined,
                      prefixIconColor: Colors.deepPurple.shade300),
                  //Text("Product Name is ${_productController.text}")
                  const SizedBox(
                    height: 20.0,
                  ),

                  //2 types of CheckBox: CheckBox and CheckBoxListTile
                  // Checkbox(
                  //     //tristate: true, the checkbox will have 3 states
                  //     //null,true,false
                  //     checkColor: Colors.black12,
                  //     activeColor: Colors.deepPurple,
                  //     value: _checkBox,
                  //     onChanged: (val) {
                  //       setState(() {
                  //         _checkBox = val;
                  //       });
                  //     }),
                  // const SizedBox(
                  //   height: 20.0,
                  // ),
                  CheckboxListTile(
                      value: _listTileCheckBox,
                      title: Text("Top Product"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (val) {
                        setState(() {
                          _listTileCheckBox = val;
                        });
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //2 types of radio buttons
                  // Radio<ProductTypeEnum>(
                  //     value: ProductTypeEnum.Deliverable,
                  //     groupValue: _productTypeEnum,
                  //     onChanged: (val) {
                  //       setState(() {
                  //         _productTypeEnum = val;
                  //       });
                  //     }),
                  Row(
                    children: [
                      MyRadioButton(
                          title: ProductTypeEnum.Downloadable.name,
                          value: ProductTypeEnum.Downloadable,
                          productTypeEnum: _productTypeEnum,
                          onChanged: (val) {
                            setState(() {
                              _productTypeEnum = val;
                            });
                          }),
                      const SizedBox(
                        width: 5.0,
                      ),
                      MyRadioButton(
                          title: ProductTypeEnum.Deliverable.name,
                          value: ProductTypeEnum.Deliverable,
                          productTypeEnum: _productTypeEnum,
                          onChanged: (val) {
                            setState(() {
                              _productTypeEnum = val;
                            });
                          }),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  // DropdownButton(
                  //     value: _selectedVal,
                  //     items: _productSizesList
                  //         .map((e) => DropdownMenuItem(
                  //               child: Text(e),
                  //               value: e,
                  //             ))
                  //         .toList(),
                  //     onChanged: (val) {
                  //       setState(() {
                  //         _selectedVal = val as String;
                  //       });
                  //     }),
                  SizedBox(height: 10.0),
                  DropdownButtonFormField(
                    value: _selectedVal,
                    items: _productSizesList
                        .map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedVal = val as String;
                      });
                    },
                    icon: const Icon(Icons.arrow_drop_down_circle,
                        color: Colors.deepPurple),
                    dropdownColor: Colors.deepPurple.shade50,
                    decoration: InputDecoration(
                        labelText: "Product Sizes",
                        prefixIcon: Icon(
                          Icons.accessibility_new_rounded,
                          color: Colors.deepPurple,
                        ),
                        border: UnderlineInputBorder()),
                  ),
                  SizedBox(height: 10.0),
                  MyButton(onPress: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Processing Data")));
                      ProductDetails productDetails = ProductDetails();
                      productDetails.productName = _productController.text;
                      productDetails.productDetails =
                          _productDesController.text;
                      productDetails.isTopProduct = _listTileCheckBox!;
                      productDetails.productType = _productTypeEnum!;
                      productDetails.productSize = _selectedVal!;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Details(productDetails: productDetails);
                      }));
                    }
                  })
                ]),
              ),
            ],
          ),
        ));
  }

  // OutlinedButton myBtn(BuildContext context) {
  //   return OutlinedButton(
  //     style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
  //     onPressed: () {
  //       Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //               builder: (context) => Details(
  //                     productName: _productController.text,
  //                   )));
  //     },
  //     child: Text("Submit Form".toUpperCase(),
  //         style: TextStyle(fontWeight: FontWeight.bold)),
  //   );
  // }
}
