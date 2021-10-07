import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // name input
    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name', style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'budi',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor
                  )
                )
              )
            )
          ],
        ),
      );
    }


    // name input
    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User Name', style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'budi@mail.com',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor
                  )
                )
              )
            )
          ],
        ),
      );
    }

    // name input
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email Address', style: secondaryTextStyle.copyWith(
              fontSize: 13
            ),),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                hintText: 'budi@mail.com',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor
                  )
                )
              )
            )
          ],
        ),
      );
    }

    // content
    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(top: defaultMargin),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.png')
                )
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput()

          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.close,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.check, color: primaryColor,)
          ),
        ],
      ),     
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}