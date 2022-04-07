
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {

  final String imageUrl,categporyName;
  const CategoryTitle({required this.imageUrl,required this.categporyName}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:8,right: 8),

      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageUrl,
              height: 70,
              width: 120,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              alignment: Alignment.center,
              height: 70,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.black26,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text(categporyName,style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w700),))
        ],
      ),
    );
  }
}