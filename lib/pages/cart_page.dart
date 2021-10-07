import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // empty cart
    Widget emptyCart(){
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/empty_cart.png', width: 87,),
            SizedBox(height: 20,),
            Text('Opss! Your Cart is Empty', style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16
            ),),
            SizedBox(height: 12,),
            Text('Let\'s find your favorite shoes', style: secondaryTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14
            ),),
            SizedBox(height: 20,),
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
              child: Text('Explore Store', style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              ),),
            )
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        children: [
          CartCard(),
          CartCard(),
        ],
      );
    }
    
    Widget customNav() {
      return Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal', style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular
                ),),
                Text('\$287,96', style: priceTextStyle.copyWith(
                  fontWeight: semiBold,
                  fontSize: 16
                ),)
              ],
            ),
            SizedBox(height: 60,),
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, '/checkout');
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                padding: EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 20
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ), 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Continue to Checkout', style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16
                  ),),
                  Icon(Icons.arrow_forward, color: Colors.white,)
                ],
              )
            )
          ],
        ),
      );
    }
    
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Your Cart', style: primaryTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 18
        ),),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left)
        ),
      ),
      body: content(),
      bottomNavigationBar: customNav(),
    );
  }
}