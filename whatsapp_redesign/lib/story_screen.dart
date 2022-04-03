import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/data.dart';

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 115,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white12,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      child: Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                          radius: 26,
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      'Add Status',
                      style: TextStyle(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: List.generate(
                  dummyData.length,
                  (i) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Column(
                        children: [
                          dummyData[i].seen
                              ? Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.teal.shade300,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        50.0,
                                      ),
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      dummyData[i].avatarUrl,
                                    ),
                                    radius: 26,
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 26,
                                  backgroundColor: Colors.transparent,
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundImage: NetworkImage(
                                      dummyData[i].avatarUrl,
                                    ),
                                  ),
                                ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            dummyData[i].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
