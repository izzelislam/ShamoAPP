import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12
      ),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: backgroundCOlor4,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset('assets/sepatu.png', width: 60,)
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Terrex Urban Low', style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 14
                ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2,),
                Text('\$143,98', style: priceTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14
                ),),
              ],
            ),
          ),
          Text('2 Items', style: secondaryTextStyle.copyWith(
            fontSize: 12,
            fontWeight: regular
          ),)
        ],
      ),
    );
  }
}