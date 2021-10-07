import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // header widget
    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Sing Up', style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold
            ),),
            SizedBox(height: 2,),
            Text('Sign in to continue', style: subtitleTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 14
            ),)
          ],
        )
      );
    }

    // fullname
    Widget fullnameInput() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fullname', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/splash_person.png', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'fullname',
                        hintStyle: subtitleTextStyle
                      )
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // username
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_username.png', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'username',
                        hintStyle: subtitleTextStyle
                      )
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // email input widget
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_email.png', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your email address',
                        hintStyle: subtitleTextStyle
                      )
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // password input
    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),),
            SizedBox(height: 12,),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset('assets/icon_password.png', width: 17,),
                    SizedBox(width: 16,),
                    Expanded(child: TextFormField(
                      style: primaryTextStyle,
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle
                      )
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // signin button widget
    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          onPressed: (){},
          child: Text('Sign Up', style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium
          ),),
        ),
      );
    }

    // footer widget
    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Text(' Login',
              style: purpleTextSTyle.copyWith(
                fontSize: 12,
                fontWeight: medium
              ),),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              fullnameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              Spacer(),
              footer()
            ],
          )
        ),
      )
    );
  }
}