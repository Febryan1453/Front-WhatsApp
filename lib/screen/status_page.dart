import 'package:flutter/material.dart';
import 'package:whatsapp/model/status_item_model.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: 64.0,
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            statusList[index].name,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            statusList[index].statusDate,
                            style: TextStyle(
                                color: Colors.black45, fontSize: 16.0),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              )
            ],
          );
        });
  }
}
