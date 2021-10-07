import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20) ,
      padding: EdgeInsets.only(
        top : 10,
        left: 12,
        bottom: 14,
        right: 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundCOlor4
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset('assets/sepatu.png',
              width: 60,
            ),
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Terrex Urban Low', style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 14
                ),),
                SizedBox(height: 2,),
                Text('\$143,98', style: priceTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14
                ),)
              ],
            ),
          ),
          Image.asset('assets/icon_favorit_filled_active.png', width: 34,)
        ],
      ),
    );
  }
}