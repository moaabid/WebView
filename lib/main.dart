import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'cohere',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) {
          return new WebviewScaffold(
            url: "http://www.alumni.sethu.ac.in/portal",
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(255, 255, 255, 10),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    fit: BoxFit.contain,
                    height: 32,
                  ),
                  Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "cohere",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 25.0,
                        ),
                      ))
                ],
              ),
            ),
            withLocalStorage: true,
            hidden: true,
            withJavascript: true,
          );
        },
      },
    );
  }
}
