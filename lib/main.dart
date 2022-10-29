import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  final String title = 'Maulana Arya Yoga Juliansyah';
  final String location = 'Semarang, Jawa Tengah';
  final String description = 
  '''Nama saya Maulana Arya Yoga Juliansyah, biasa dipanggil Yoga oleh teman-teman. Saat ini saya berusia 19 tahun. Saya lahir dan tumbuh di kota Semarang. Hobi saya adalah mendengarkan musik. Lalu ini saya bingung mau diisi apalagi, jadi saya rasa cukup segini saja. Kesepian tanpa kekasih, sekian dan terimakasih. ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ 
          Image.asset(
            'images/profil.jpg',
            height: 270,
            width: 200,),
            Container(height: 15,),
            Column(
              children: [
                Container(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(this.title, 
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                    Text(
                      this.location,
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 100,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                this.description,
                style: TextStyle(
                  fontSize: 18,
                ),
                softWrap: true,
              ),
            )
        ]
      ),
    );
  }
}

