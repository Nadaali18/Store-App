
import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_text.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.text,
     this.function
  });
 final String text;
 final VoidCallback? function;
  @override
  Widget build(BuildContext context) {
    return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: function,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Colors.purple,
                    minimumSize: const Size(370, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: CustomText(
                    text,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            );
  }
}
