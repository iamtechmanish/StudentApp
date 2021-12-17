import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teacher_app/catelog.dart';
import 'package:teacher_app/widgets/drawer.dart';
import 'package:teacher_app/widgets/items_widget.dart';
class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
void initState() {
  super.initState();
  loadData();
}


loadData() async{
  
 var productJson =  await rootBundle.loadString("assets/files/products.json");
  final decodedData  = jsonDecode(productJson);
  var productsData = decodedData["products"];
  print(productsData);
  CatelogModel.products = List.from(productsData)
  .map<Item>((item) => Item.fromMap(item))
  .toList();

  setState(() {
    
  });


 

}



  @override
  Widget build(BuildContext context) {

  //  final dummyList = List.generate(50, (index)=>CatelogModel.products[0]);
    return Scaffold(
        appBar: AppBar(
          title: Text("Student App"),
        ),
        body: ListView.builder(
          itemCount: CatelogModel.products.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: CatelogModel.products[index],
              );
          },
          ),
        drawer: MyDrawer(),
      );
  }
}