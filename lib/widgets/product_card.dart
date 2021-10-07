import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: defaultMargin
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffECEDEF)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Image.asset('assets/sepatu.png',
              width: 215, 
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('hiking', style: secondaryTextStyle.copyWith(
                    fontSize: 12
                  ),),
                  SizedBox(height: 6,),
                  Text('COURT VISION 2.0', style: blackTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 18
                  ),
                  overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 6,),
                  Text('\$98.08', style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}