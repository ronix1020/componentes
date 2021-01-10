import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://randomfox.ca//images//27.jpg'),
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('RB'),
              backgroundColor: Colors.white,
            ),
          )
        ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FadeInImage(
                image: NetworkImage('https://pbs.twimg.com/profile_images/653700295395016708/WjGTnKGQ_400x400.png'),
                placeholder: AssetImage('assets/jar-loading.gif.gif'),
                fadeInDuration: Duration(milliseconds: 200),
              ),
              ),
              Text('Que buscas por aqui we? Saquese')
          ],
        ),
    );
  }
}