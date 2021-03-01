import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double boxImg;
  List<Widget> items;
  Color colorStars;

  @override
  void initState() {
    super.initState();
    colorStars = Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    boxImg = MediaQuery.of(context).size.width * 0.25;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mission 1'),
        backgroundColor: Colors.amber,
      ),

      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 80),
        child: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(colorStars == Colors.amber){
                colorStars = Colors.grey;
              }else{
                colorStars = Colors.amber;
              }
            });
          },
          child: Icon(
            Icons.star,
            color: colorStars,
          ),
          backgroundColor: Colors.white,
          elevation: 2,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.amber,
                Colors.white,
          ])),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 230,
                child: Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/big1.jpg'),
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: boxImg,
                        height: boxImg,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            image: DecorationImage(
                              image: AssetImage('assets/big2.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: boxImg,
                        height: boxImg,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            image: DecorationImage(
                              image: AssetImage('assets/big3.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: boxImg,
                        height: boxImg,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            image: DecorationImage(
                              image: AssetImage('assets/big4.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        width: boxImg,
                        height: boxImg,
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            image: DecorationImage(
                              image: AssetImage('assets/big5.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Flexible(
                flex: 5,
                child: ListView(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),

                  children: <Widget>[
                    Text(
                      "Big Ben, tower clock, famous for its accuracy and for its massive bell. Strictly speaking, the name refers to only the great hour bell, which weighs 15.1 tons (13.7 metric tons), but it is commonly associated with the whole clock tower at the northern end of the Houses of Parliament, in the London borough of Westminster. The tower itself was formally known as St. Stephen’s Tower until 2012, when it was renamed Elizabeth Tower on the occasion of Elizabeth II’s Diamond Jubilee, celebrating 60 years on the British throne. The hands of the clock are 9 and 14 feet (2.7 and 4.3 metres) long, respectively, and the clock tower rises about 320 feet (97.5 metres). Originally in coordination with the Royal Greenwich Observatory, the chimes of Big Ben have been broadcast—with a few interruptions—since 1924 as a daily time signal by the British Broadcasting Corporation (BBC). \n",
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),

                    Text(
                      "Big Ben’s clock is powered by a double three-legged gravity escapement designed by Edmund Beckett Denison in 1851, which imparted unprecedented accuracy. Essentially, this invention prevents the large hands of the clock from being vulnerable to external influences, such as birds or gusts of wind, that might otherwise interfere with the swing of the clock’s pendulum. \n",
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),

                    Text(
                      "Big Ben chimes every hour, and smaller bells around it chime every 15 minutes to mark each quarter hour. \n",
                      style: TextStyle(
                          fontSize: 16
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
