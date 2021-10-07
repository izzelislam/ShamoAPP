import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductPage extends StatefulWidget {

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List images  = [
    'assets/sepatu.png',
    'assets/sepatu.png',
    'assets/sepatu.png'
  ];

  final List familiarShoose = [
    'assets/sepatu.png',
    'assets/sepatu.png',
    'assets/sepatu.png',
    'assets/sepatu.png',
    'assets/sepatu.png',
    'assets/sepatu.png'
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    // indicator
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? primaryColor : Color(0xffC4C4C4)
        ),
      );
    }

    // header
    Widget header() {

      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 30,
              right: 30
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.chevron_left)
                ),
                Icon(Icons.shopping_bag, color: backgroundColor1,)
              ],
            ),
          ),
          CarouselSlider(
            items: images.map((image) => Image.asset(
              image,
              width: MediaQuery.of(context).size.width,
              height: 310,
              fit: BoxFit.cover,
            )).toList(), 
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              initialPage: 0,
              onPageChanged: (index, reason){
                setState(() {
                  currentIndex = index;
                });
              }
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          )
        ],
      );
    }

    // familiar shoose card
    Widget familiarCard(String url) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(
          right: 16
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(url)
          )
        ),
      );
    }
    
    // content
    Widget content() {
      int index = -1;
      return Container(
        margin: EdgeInsets.only(top: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: backgroundColor1
        ),
        child: Column(
          children: [
            // header-content
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                right: defaultMargin,
                left: defaultMargin
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TERREX URBAN LOW', style: primaryTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18
                      ),),
                      Text('Hiking', style: secondaryTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12
                      ),)
                    ],
                  ),
                  Image.asset('assets/icon_favorit_filled.png', width: 46,)
                ],
              ),
            ),
            SizedBox(height: 20,),

            // note price
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price starts from', style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular
                  ),),
                  Text('\$143,98', style: priceTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                  ),)
                ],
              ),
            ),

            // describtions
            Container(
              margin: EdgeInsets.all(defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Description', style: primaryTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: medium
                    ),),
                    SizedBox(height: 12,),
                    Text('Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.', style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14
                    ),)
                ],
              ),
            ),
          
          
            // familiar shoose
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text('Fimiliar Shoes', style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium
                    ),),
                  ),
                  SizedBox(height: 12,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoose.map((e) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(left: index == 0 ? defaultMargin : 0),
                          child: familiarCard(e)
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          
            // button
            Container(
              margin: EdgeInsets.all(defaultMargin),
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    margin: EdgeInsets.symmetric(
                      horizontal: 16
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: primaryColor
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Icon(Icons.chat_bubble, color: primaryColor,),
                  ),
                  TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 76
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                    child: Text('Add to Cart', style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16
                    ),),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content()
        ],
      )
    );
  }
}