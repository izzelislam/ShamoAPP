import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // headear
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Message Support', style: primaryTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 18
        ),),
        elevation: 0,
        automaticallyImplyLeading: false,
      );

    }

    Widget emptyChat() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Headset.png', width: 80,),
              SizedBox(height: 20,),
              Text('Opss no message yet?', style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),),
              SizedBox(height: 16,),
              Text('You have never done a transaction', style: subtitleTextStyle.copyWith(
                fontWeight: regular
              ),),
              SizedBox(height: 20,),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                  child: Text('Explore Store', style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium
                  ),),
                )
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            children: [
              ChatTile(),
              ChatTile(),
              ChatTile(),
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