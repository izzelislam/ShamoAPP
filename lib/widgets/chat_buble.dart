import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/theme.dart';

class BubleChat extends StatelessWidget {

  final String text;
  final bool isSender;
  final hasProduct;

  BubleChat({this.text = '', this.isSender= false, this.hasProduct= false});

  @override
  Widget build(BuildContext context) {

    Widget productPreview() {
      return Container(
        width: 230,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? backgroundColor5 : backgroundCOlor4,
          borderRadius: BorderRadius.only(
            topLeft    : Radius.circular(isSender ? 12 : 0),
            topRight   : Radius.circular(!isSender ? 12 : 0),
            bottomLeft : Radius.circular(12),
            bottomRight: Radius.circular(12)
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/sepatu.png',
                    width: 70,
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('COURT VISION 2.0 SHOES', style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: regular
                      ),),
                      SizedBox(height: 4,),
                      Text('\$57,15', style: priceTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14
                      ),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                OutlinedButton(
                  onPressed: (){}, 
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryColor
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Text('Add to Cart', style: purpleTextSTyle, )
                ),
                SizedBox(width: 8,),
                TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  child: Text('Buy Now', style: GoogleFonts.poppins(
                    color: backgroundColor5,
                    fontWeight: medium
                  ),),
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 30
      ),
      child: Column(
        crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
           hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment: isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12
                  ),
                  decoration: BoxDecoration(
                    color: isSender ? backgroundColor5 : backgroundCOlor4,
                    borderRadius: BorderRadius.only(
                      topLeft    : Radius.circular(isSender ? 12 : 0),
                      topRight   : Radius.circular(!isSender ? 12 : 0),
                      bottomLeft : Radius.circular(12),
                      bottomRight: Radius.circular(12)
                    )
                  ),
                  child: Text( this.text, style: primaryTextStyle.copyWith(
                    fontWeight: regular,
                    fontSize: 14
                  ),)
                ),
              )
            ],
          )
        ],
      )
    );
  }
}