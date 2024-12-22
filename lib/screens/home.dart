import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products_service.dart';
import 'package:store_app/widgets/custom_card.dart';
import 'package:store_app/widgets/custom_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});
 static String id='Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const CustomText('New Trend',color: Colors.black,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){},icon: const Icon(FontAwesomeIcons.cartPlus,color: Colors.black),),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 50),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductsService().getAllProduct(),
          builder:(context,snapshot){
            if (snapshot.hasData) {
              List<ProductModel> products= snapshot.data!;
  return GridView.builder(
    itemCount: products.length,
            clipBehavior: Clip.none,
           gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 90,
            ), 
           itemBuilder: (context,index){
            return  CustomCard(product: products[index],);
          });
}else{
  return Center(child: CircularProgressIndicator());
}
          }, 
        ),
      ),
    );
  }
}
