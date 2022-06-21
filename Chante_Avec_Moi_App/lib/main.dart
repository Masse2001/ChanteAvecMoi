import 'package:flutter/material.dart';
import 'dart:isolate';
import 'dart:ui';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Plugin must be initialized before using

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

/*

TELECHARGEMENT DE FICHIER

Center(
        child: ElevatedButton(
          child: Text("Télécharger le fichier"),
          onPressed: () async {
            final status = await Permission.storage.request();
            var etat = await Permission.storage.status;
            print("STOP");
            print(etat);
            if (status.isGranted) {
              print("granted");
              final externalDir = await getExternalStorageDirectory();
              print("after await");
              final id = await FlutterDownloader.enqueue(
                url: "https://firebasestorage.googleapis.com/v0/b/spring-a2e95.appspot.com/o/recus%2Fpdf_recu_2022-05-21T18%3A24%3A22.030641?alt=media&token=0b17711a-6f14-4eae-9486-4e4b86c0ba50",
                savedDir: externalDir!.path,
                fileName: "Download",
                showNotification: true,
                openFileFromNotification: true,
              );
              print("after flutter downloader");
            } else {
              print("Permission denied");
            }
          }
        ),
      ),
*/