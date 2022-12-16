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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String s1 = "";
  TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sample App",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                    "\u266b Hi This is A Notification",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 720),
                backgroundColor: Color(0x95000000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              ),
          ),
            child: Text("Show Notification"),
          ),
        ],
      ),
    );

  }
}
