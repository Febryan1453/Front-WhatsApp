import 'package:flutter/material.dart';
import 'package:whatsapp/model/chat_item_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatList.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 58,
                      height: 58,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(chatList[index].image))),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  chatList[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                Text(
                                  chatList[index].messageDate,
                                  style: TextStyle(color: Colors.black45),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              chatList[index].mostRecentMessage,
                              style: TextStyle(
                                  color: Colors.black45, fontSize: 16.0),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
