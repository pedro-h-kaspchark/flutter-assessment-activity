import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela inicial', style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.deepPurple,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    drawer: Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(accountName: 
          Text('Pedro', 
          style: TextStyle(fontSize: 24),
          ), 
          accountEmail: 
          Text('pkaspchark@gmail.com')),
          ListTile(title: Text('Sair', style: TextStyle(fontSize: 17),
          ),
          onTap: (){

          },
          leading: Icon(
            Icons.logout,
            size: 28,
          ),
          )
        ],
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Bem-vindo a Tela Inicial!', 
          style: TextStyle(
            color: Colors.deepPurple, 
            fontSize: 24, 
            fontWeight: FontWeight.bold),
            )
        ],
      )
    )
    );
  }
}