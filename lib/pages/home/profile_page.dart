import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(defaultMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset('assets/profile.png', width: 64,),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hallo, Alex', style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold
                      ),),
                      Text('@alexkeinn', style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: regular
                      ),)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
                  },
                  child: Image.asset('assets/icon_logout.png', width: 20,)
                )
              ],
            ),
          ),
        )
      );
    }

    // items
    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: primaryTextStyle.copyWith(
              fontSize: 13
            ),),
            Icon(Icons.chevron_right, color: primaryTextColor,)
          ],
        ),
      );
    }

    // content
    Widget content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor3
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Account', style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold
              ),),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: menuItem('Edit Profile')
              ),
              menuItem('Your Orders'),
              menuItem('Help'),
              SizedBox(height: defaultMargin,),
              Text('General', style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold
              ),),
              menuItem('Privacy & Policy'),
              menuItem('Term of Service'),
              menuItem('Rate App'),
            ],
          )
        ),
      );
    }

    return Column(
      children: [
        header(),
        content()
      ],
    );
  }
}