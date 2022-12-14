import 'package:flutter/material.dart';
import 'package:flutter_login/Screen/NewWindow/NewWindow.dart';
import 'package:flutter_login/Screen/NewWindow/Widget/RadioButton.dart';

class FirstWindow extends StatefulWidget {
  const FirstWindow({super.key});

  @override
  State<FirstWindow> createState() => _FirstWindowState();
}

class _FirstWindowState extends State<FirstWindow> {


var _TextField;
var fieldName, myIcon, myController, prefixColor;
final _productController = TextEditingController();
final _productDisController = TextEditingController();

bool? _checkbox_Val, _listTileCheckBox = false;

ProductTypeEnum? _productTypeEnum;

final _ProductsizeList = ["Small", "Medium", "Large", "Xlarge"];
String _SelectedValue = "Small";


@override
void dispose() {
    // TODO: implement dispose
    _productController.dispose();
    _productDisController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Container(
      
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController = _productController,
              fieldName = "Product Name",
              myIcon = Icon(Icons.propane_outlined),
              prefixColor = Colors.deepPurple.shade300),
            SizedBox(height: 20.0,),
            MyTextField(
              myController = _productDisController,
              fieldName = "Product Description",
              myIcon = Icon(Icons.description_outlined),
              prefixColor = Colors.deepPurple.shade300),
            SizedBox(height: 20.0,),
            
            // Checkbox using Row and Column
            Row(
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10.0)),
                     Checkbox(
                      tristate: true,
                      activeColor: Colors.amberAccent,
                      checkColor: Colors.white,
                      value: _checkbox_Val, 
                      onChanged: (val) {
                        setState(() {
                          _checkbox_Val = val;
                        });
                      }),
                  ],
                ),
                Column(
                  children: [
                    Text("TOP product"),
                  ],
                )
              ],
            ),
           

            // SizedBox(height: 20.0,),
            // CheckboxListTile(
            //   value: _listTileCheckBox, 
            //   title: Text("CheckBoxListTile"),

            //   controlAffinity: ListTileControlAffinity.leading,
            //   onChanged: (val){
            //     setState(() {
            //       _listTileCheckBox = val;
            //     });
            //   }),

            // Radio Button

            //Radio(value: ProductTypeEnum.Deliverable, groupValue: _productTypeEnum, onChanged: (val) {setState(() {_productTypeEnum = val;});}),
            SizedBox(height: 10.0,),
            Row(
              children: [
                  radioListTypeButton(
                    title: ProductTypeEnum.Downloadable.name, 
                    value: ProductTypeEnum.Downloadable, 
                    selectedTypeEnum: _productTypeEnum, 
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    },
                    ),
                  SizedBox(width: 5.0,),
                  radioListTypeButton(
                    title: ProductTypeEnum.Deliverable.name, 
                    value: ProductTypeEnum.Deliverable, 
                    selectedTypeEnum: _productTypeEnum, 
                    onChanged: (val) {
                      setState(() {
                        _productTypeEnum = val;
                      });
                    },
                    ),
              ],
            ),

            SizedBox(height: 10.0,),
            DropdownButton(
              value: _SelectedValue,
              items: _ProductsizeList.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), 
              onChanged: (val){
                setState(() {
                  _SelectedValue = val as String;
                });
              }
              ),

              DropdownButtonFormField(
                value: _SelectedValue,
                items: _ProductsizeList.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(), 
                onChanged: (val){
                setState(() {
                  _SelectedValue = val as String;
                });
              },
              icon: const Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.deepPurple,
              ),
              dropdownColor: Colors.deepPurple.shade50,
              decoration: InputDecoration(
                labelText: "Product Size",
                prefixIcon: Icon(
                  Icons.accessibility_new_outlined,
                  color: Colors.deepPurple,
                ),
                border: UnderlineInputBorder(),
              ),
              
            ),
            


            SizedBox(height: 30.0,),
            submitButton(context),
            //Text("Product Name $_TextField"),
          ],
        ),
      )
    );
  }

  TextFormField MyTextField(myController, fieldName, myIcon, prefixColor) {
    return TextFormField(
            controller: myController,
            decoration: InputDecoration(
              labelText: fieldName,
              prefixIcon: myIcon,
              border: OutlineInputBorder(),
              prefixIconColor: prefixColor,
            ),
          );
  }

OutlinedButton submitButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: (){
        Navigator.push(context, 
          MaterialPageRoute(builder: (context){
            return SecondWindow(product_name: _productController.text, product_details: _productDisController.text,);
          })
        );
      }, 
      child: Text(
        "Submit Form".toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ));
}
}