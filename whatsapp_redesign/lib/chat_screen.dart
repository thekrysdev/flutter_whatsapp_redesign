import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/data.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(
            0xFF171717,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              50,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 5),
          child: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, i) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      dummyData[i].avatarUrl,
                    ),
                    radius: 26,
                    child: dummyData[i].online
                        ? Container(
                            margin: EdgeInsets.only(
                              bottom: 40.0,
                              right: 40.0,
                            ),
                            width: 20,
                            height: 20,
                          )
                        : Container(),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        dummyData[i].name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        dummyData[i].time,
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          if (dummyData[i].seen)
                            Icon(
                              Icons.done_all,
                              size: 18,
                              color: Colors.blue[600],
                            ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              dummyData[i].message,
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 14,
                              ),
                            ),
                          ),
                          if (dummyData[i].seen)
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.red[400],
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
