import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  final String title = 'Login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // ignore: unused_field
  String _username = "";
  // ignore: unused_field
  String _password = "";

  void _loginUser() {
    setState(() {
      _username = usernameController.text;
      _password = passwordController.text;
    });

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => Home(username: _username, password: _password))
    // );
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center (
        child: Container(
          width: 300,
          height: 500,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  fillColor: Colors.white
                ),
                controller: usernameController,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                controller: passwordController,
                obscureText: true,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: _loginUser,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    ),
                )
                ),
              SizedBox(height: 20,),
              Text(_username+" with "+_password+" is trying to login"),
              SizedBox(height: 20,),
              Text("Edited by Luie John Malimit"),
              Image.network(
                "data:image/png;base64,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",
                width: 180,
                height: 180,
              )
            ],
          ),
        ),
      )
    );
  }
}

class Home extends StatelessWidget {
  final String username;
  final String password;

  const Home({ Key? key, required this.username, required this.password}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Welcome, "+username),
          Text("Your Password is: "+password),
        ],
      ),
    );
  }
}