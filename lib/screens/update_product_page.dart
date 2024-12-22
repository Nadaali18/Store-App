import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_buttom.dart';
import 'package:store_app/widgets/custom_text.dart';
import 'package:store_app/widgets/custom_textfields.dart';

class UpdateProductPage extends StatefulWidget {
      UpdateProductPage({super.key});
static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
String? productName, desc, image;

String? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      appBar: AppBar(
        title: const CustomText('Update Product',color: Colors.black,),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80,),
              CustomTextFields(
                onChanged: (data){
                  productName=data;
                },
                 text: 'Product Name'),
              const SizedBox(height: 10,),
              CustomTextFields( 
                onChanged: (data){
                  desc=data;
                },
                text: 'Product Description'),
              const SizedBox(height: 10,),
              CustomTextFields( 
                onChanged: (data){
                  price=data;
                },
                inputType: TextInputType.number,
                text: 'Product Price'),
              const SizedBox(height: 10,),
              CustomTextFields( 
                onChanged: (data){
                  image=data;
                },
                text: 'Product Image'),
               const SizedBox(height: 50,),
                CustomButtom(text: 'Update', function: () {
                 UpdateProduct().updateProduct(title: productName!, price: price!, description: desc!, image: image!, category:product.category);
               },),
            ],
          ),
        ),
      ),
    );
  }
}