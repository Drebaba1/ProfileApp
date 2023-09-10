import 'package:flutter/material.dart';
import 'package:myflutterapp/web_view_container.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Stage1Task(),
      },
      // home: Home(),
    ));

class Stage1Task extends StatefulWidget {
  const Stage1Task({super.key});

  @override
  State<Stage1Task> createState() => _Stage1TaskState();
}

class _Stage1TaskState extends State<Stage1Task> {
// class Home extends StatefulWidget {
//   const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slack Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.black,
          child: Column(children: <Widget>[
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(9.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Welcome,',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: ' Akinyemi Damilare M. 👋 ',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 2.0,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/dre.jpg'),
              radius: 150,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Display name:',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '  Dre_',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Email:',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '  akinyedre007@gmail.com',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Track:',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '  Mobile Track',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Native Language:',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '  Flutter (Dart)',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50),
                      backgroundColor: Colors.blue[400],
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const WebViewScreen();
                    }));
                  },
                  child: const Text(
                    'Open GitHub',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
