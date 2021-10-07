import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Favorite Shoes', style: primaryTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 18
        ),),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/love_icon.png',
                width: 74,
              ),
              SizedBox(height: 23),
              Text('You don\'t have dream shoes?', style: primaryTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 16
              )),
              SizedBox(height: 12,),
              Text('Let\'s find your favorite shoes', style: secondaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14
              ),),
              SizedBox(height: 20,),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 24
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  child: Text('Explore Store', style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 16
                  ),),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(child: Container(
        color: backgroundColor3,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin
        ),
        child: ListView(
          children: [
            WishlistCard(),
            WishlistCard(),
            WishlistCard(),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        //emptyWishlist()
        content()
      ],
    );
  }
}