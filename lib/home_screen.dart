import 'package:flutter/material.dart';
import 'purchase_screen.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcfeeff),
      body: Column(
        children: <Widget>[
          Image.asset('img2.png'),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView.builder(
                itemExtent: 110,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                itemCount: fitnessData.length,
                itemBuilder: (context, index) => CustomCard(
                  color: fitnessData[index]['color'],
                  title: fitnessData[index]['title'],
                  imgUrl: fitnessData[index]['imgUrl'],
                  time: fitnessData[index]['time'],
                  complete: fitnessData[index]['complete'],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final color, title, imgUrl, time, complete;

  CustomCard({this.color, this.title, this.imgUrl, this.time, this.complete});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PurchaseScreen()));
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 20),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(color),
                ),
                child: Image.asset(imgUrl),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        color: orangeColor,
                      ),
                      SizedBox(width: 10),
                      Text(time),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: orangeColor,
                      ),
                      SizedBox(width: 10),
                      Text(complete),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
