import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_buble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // product preview
    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          bottom: 20
        ),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/sepatu.png',
                width: 54
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('COURT VISIO', style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular
                  ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2,),
                  Text('\$57,15', style: priceTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14
                  ),),
                ],
              ),
            ),
            SizedBox(width: 19,),
            Image.asset('assets/button_close.png', width: 22, )
          ],
        )
      );
    }

    // chat input
    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: backgroundCOlor4,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Typle Message...',
                          hintStyle: subtitleTextStyle
                        ),
                      )
                    )
                  ),
                ),
                SizedBox(width: 20,),
                Image.asset('assets/send_button.png', width: 45,)
              ],
            ),
          ],
        )
      );
    }

   // content
   Widget content() {
     return ListView(
       padding: EdgeInsets.symmetric(horizontal: 20),
       children: [
         BubleChat(
           isSender: true,
           text: 'Hi, This item is still available?',
           hasProduct: true,
         ),
         BubleChat(
           isSender: false,
           text: 'Good night, This item is only available in size 42 and 43',
         )
       ],
     );
   }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: backgroundColor1,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset('assets/avatar_online.png',
                width: 50,
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shoe Store', style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 14
                  ),),
                  Text('Online', style: secondaryTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 14
                  ),)
                ],
              )
            ],
          ),
        ), 
        preferredSize: Size.fromHeight(78)
      ),
      bottomNavigationBar: chatInput(),
      body: content()
    );
  }
}