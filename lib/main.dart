import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new RatingClass(),
    );
  }
}

class RatingClass extends StatefulWidget {
  @override
  _RatingState createState() => new _RatingState();
}

class _RatingState extends State<RatingClass> {
  double rating1 = 3.5, rating2 = 3.5, rating3 = 3.5, rating4 = 3.5;
  int starCount = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
            new Text("Customer Feedback", style: new TextStyle(fontSize: 40.0)),
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.only(top: 10.0, bottom: 40.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "How do you rate your last experience with us?",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new StarRating(
                  size: 60.0,
                  rating: rating1,
                  color: Colors.green,
                  borderColor: Colors.orange,
                  starCount: starCount,
                  onRatingChanged: (rating) => setState(
                        () {
                          this.rating1 = rating;
                        },
                      ),
                ),
                new Text(
                  "Your rating is: $rating1",
                  style: new TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 10.0, bottom: 40.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "How likely is it that you would recommend our product to a friend or colleague?",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new StarRating(
                  size: 60.0,
                  rating: rating2,
                  color: Colors.green,
                  borderColor: Colors.orange,
                  starCount: starCount,
                  onRatingChanged: (rating) => setState(
                        () {
                          this.rating2 = rating;
                        },
                      ),
                ),
                new Text(
                  "Your rating is: $rating2",
                  style: new TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: 10.0, bottom: 40.0),
            child: new Column(
              children: <Widget>[
                new Text(
                  "How likely are you to repeat your business with us?",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new StarRating(
                  size: 60.0,
                  rating: rating3,
                  color: Colors.green,
                  borderColor: Colors.orange,
                  starCount: starCount,
                  onRatingChanged: (rating) => setState(
                        () {
                          this.rating3 = rating;
                        },
                      ),
                ),
                new Text(
                  "Your rating is: $rating3",
                  style: new TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
