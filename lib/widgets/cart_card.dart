import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 16
      ),
      decoration: BoxDecoration(
        color: backgroundCOlor4,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage('assets/sepatu.png')
                  )
                ),
              ),
              SizedBox(width: 12,),
              Expanded(child: Column(
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
              )),
              Column(
                children: [
                  Image.asset('assets/button_add.png', width: 16,),
                  SizedBox(height: 2,),
                  Text('2', style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14
                  ),),
                  SizedBox(height: 2,),
                  Image.asset('assets/button_reduce.png', width: 16,),
                  
                ],
              )
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Icon(Icons.delete, color: Colors.red[600], size: 15,),
              SizedBox(width: 4,),
              Text('Remove', style: GoogleFonts.poppins(
                color: Color(0xffED6363),
                fontWeight: light,
                fontSize: 12
              ),)
            ],
          )
        ],
      ),
    );
  }
}