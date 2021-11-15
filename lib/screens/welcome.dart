import 'package:flutter/material.dart';
import 'package:shopper/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('image/online-store.jpg'),
              )),
            ),
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(children: [
                TextSpan(
                  text: 'ONLINE STORE\n',
                  style: Theme.of(context).textTheme.display1,
                ),
                TextSpan(
                  text: 'EVERY THING YOU WANT AND MORE!',
                  style: Theme.of(context).textTheme.headline,
                ),
              ])),
              FittedBox(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){return MyLogin();},));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 26),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.yellow),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "START SHOPPING",
                          style: Theme.of(context)
                              .textTheme
                              .button
                              .copyWith(color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
