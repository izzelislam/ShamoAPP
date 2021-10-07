import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/checkout_card.dart';


class CheckoutPage extends StatelessWidget {
  const CheckoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget priceitem(String name, String val) {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(name, style: secondaryTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 12
            ),),
            Text(val, style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 14
            ),)
          ],
        ),
      );
    }

    // content
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 38
        ),
        children: [

         Container(
           margin: EdgeInsets.only(top: defaultMargin),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('List Items', style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              ),),
              SizedBox(height: defaultMargin,),
              CheckoutCard(),
              CheckoutCard(),
             ],
           ),
         ),
          
        // address details
        Container(
          width: double.infinity,
          margin:EdgeInsets.only(top:30),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundCOlor4,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Address Details', style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              ),),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/icon_store_location.png', width: 40,),
                      Image.asset('assets/line.png', height: 30,),
                      Image.asset('assets/icon_marker.png', width: 40,),
                    ],
                  ),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text('Store Location', style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light
                          ),),
                          SizedBox(height: 1,),
                          Text('Adidas Core', style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 14
                          ),)
                        ],
                      ),
                      SizedBox(height: 25,),
                      Column(
                        children: [
                          Text('Your Address', style: secondaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: light
                          ),),
                          SizedBox(height: 1,),
                          Text('Marsemoon', style: primaryTextStyle.copyWith(
                            fontWeight: medium,
                            fontSize: 14
                          ),)
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        
        // payment summery
        Container(
          margin: EdgeInsets.only(
            top: defaultMargin
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: backgroundCOlor4,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment Summary', style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              ),),
              priceitem('Product Quantity', '2 Items'),
              priceitem('Product Price', '\$575.96'),
              priceitem('Shipping', 'Free'),
              SizedBox(height: 11),
              Divider(
                color: Color(0xff2E3141),
                height: 2,
                thickness: 2
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: priceTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14
                  ),),
                  Text('\$575.92', style: priceTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14
                  ),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: defaultMargin,),
        Divider(
          color: Color(0xff2E3141),
          height: 2,
          thickness: 2
        ),
        SizedBox(height: defaultMargin,),
        TextButton(
          onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, '/checkout-success', (route) => false);
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            padding: EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text('Checkout Now', style: primaryTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16
          ),),
        ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.chevron_left)
        ),
        centerTitle: true,
        title: Text('Checkout Details', style: primaryTextStyle.copyWith(
          fontSize: 18,
          fontWeight: medium
        ),),
      ),
      body: content(),
    );
  }
}