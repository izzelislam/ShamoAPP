import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/newarrival_card.dart';
import 'package:shamo/widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  
  // header
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hallo, Alex',
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold
                  ),
                ),
                Text('@alexkeinn', style: subtitleTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
                ),)
              ],
            ),
          ),
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image : AssetImage('assets/profile.png')
              )
            ),
          ),
          
        ],
      ),
    );
  }

  // categories
  Widget categories() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor
              ),
              child: Text('All Shoes', style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13
              ),),
            ),
           
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transParent
              ),
              child: Text('Running', style: subtitleTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13
              ),),
            ),
      
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transParent
              ),
              child: Text('Training', style: subtitleTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13
              ),),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transParent
              ),
              child: Text('Hiking', style: subtitleTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13
              ),),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10
              ),
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: subtitleColor
                ),
                color: transParent
              ),
              child: Text('Basket Ball', style: subtitleTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 13
              ),),
            ),
          ],
        ),
      ),
    );
  }

  // popular products
  Widget popularProductTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: Text('Popular Products', style: primaryTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semiBold
      ),),
    );
  }

  Widget popularProduct() {
    return Container(
      margin: EdgeInsets.only(
        top: 14,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin,),
            Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget newArrivalTitle() {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        left: defaultMargin,
        right: defaultMargin
      ),
      child: Text('New Arrivals', style: primaryTextStyle.copyWith(
        fontSize: 22,
        fontWeight: semiBold
      ),),
    );
  }

  Widget newArrival() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Column(
        children: [
          SizedBox(height: 14,),
          NewArrivalCard(),
          NewArrivalCard(),
          NewArrivalCard(),
          NewArrivalCard(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProduct(),
        newArrivalTitle(),
        newArrival()
      ],
    );
  }
}