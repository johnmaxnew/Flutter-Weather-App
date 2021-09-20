
import 'package:flutter/material.dart';

TextStyle title = const TextStyle(fontSize: 18,fontWeight: FontWeight.w600);
TextStyle details = const TextStyle(fontSize: 18,fontWeight: FontWeight.w400);

Widget moreInfo(String wind, String humidity, String pressure, String mood) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: title,
                ),
                SizedBox(height: 20,),
                Text(
                  "Pressure",
                  style: title,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: details,
                ),
                SizedBox(height: 20,),
                Text(
                  "$pressure",
                  style: details,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: title,
                ),
                SizedBox(height: 20,),
                Text(
                  "Mood",
                  style: title,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: details,
                ),
                SizedBox(height: 20,),
                Text(
                  "$mood",
                  style: details,
                ),
              ],
            )

          ],
        )
      ],
    ),
  );
}
