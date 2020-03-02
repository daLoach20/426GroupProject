// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:mobile_wallet_app/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DigiWallet',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
      ),
      // home: HomeScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SplashScreen.id: (context) => SplashScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoadFundsScreen.id: (context) => LoadFundsScreen(),
        ActivityScreen.id: (context) => ActivityScreen(),

      }
    );
  }
}
class RandomWordsState extends State<RandomWords> {

  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Divider(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
  }

  Widget _buildRow(WordPair pair){
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    // final wordPair = WordPair.random();
    // return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
}
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class SplashScreen extends StatelessWidget {

  static const String id = "LOADING";

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(HomeScreen.id);
      },
      child: 
      Container(
        child: Text('Tap Anywhere', style: TextStyle(
          color: Colors.white,
        ))
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  static const String id = "SIGNIN";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Sign In')
    );
  }
}

class RegistrationScreen extends StatelessWidget {
  static const String id = "REGISTER";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Register')
    );
  }
}

class LoadFundsScreen extends StatelessWidget {
  static const String id = "LOADFUNDS";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Load Funds')
    );
  }
}

class ActivityScreen extends StatelessWidget {
  static const String id = "ACTIVITY";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Activity")
    );
  }
}