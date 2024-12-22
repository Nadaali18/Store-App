
import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';
import 'package:store_app/widgets/custom_text.dart';

class CustomCard extends StatelessWidget {
   CustomCard({
    required this.product,
    super.key,
  });
ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 0,
                  offset: Offset(10, 10)
                )
              ],
            ),
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all (8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(product.title.substring(0,6),color: Colors.grey,fontSize: 16,),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          r'$''${product.price.toString()}',
                          fontSize: 16,
                        ),
                        Icon(Icons.favorite,color: Colors.red,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 35,
            bottom: 90,
            child: Image.network(product.image,height:100,width: 100,),
          ),
        ],
      ),
    );
  }
}