import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget content(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/empty_cart.png', width: 79,),
            SizedBox(height: 20,),
            Text('You made a transaction', style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16
            ), ),
            SizedBox(height: 12,),
            Container(
              width: 189,
              child: Text('Stay at home while we prepare your dream shoes', 
                style: secondaryTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14,
                  
                ),
                textAlign: TextAlign.center,
              )),
              SizedBox(height: defaultMargin,),
              Container(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 24
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                      child: Text('Order Other Shoes', style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium
                      ),),
                    ),
                    SizedBox(height: 12,),
                    TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff39374B),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 40
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        )
                      ),
                      child: Text('View My Order', style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium
                      ),),
                    ),
                  ],
                ),
              )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Checkout Success', style: primaryTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 18
        ),)
      ),
      body: content()
    );
  }
}