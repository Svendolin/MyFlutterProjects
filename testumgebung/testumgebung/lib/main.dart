import 'package:flutter/material.dart'; // Importiert verschiedene Widgets, die für die Erstellung von Material Design verwendet werden.

void main() {
  // Einstiegsfunktion für die App!
  runApp(const MyApp());
}

// ------------------------ STATELESSWIDGET ------------------------ //
// StatelessWidget = Status des Widgets kann sich nicht ändern.

// Funktionalitäten, die wir aus der Library von Flutter holen...
class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application. (Dieses Widget ist der Wurzelknoten Ihrer Anwendung.)
  @override
  Widget build(BuildContext context) {
    // Soll als erstes aufgerufen werden, wenn die App gestartet wird.
    return MaterialApp(
      // Bindet Material Design für dieses Widget ein. Hier kommen die allgemeinen Informationen für die App rein.
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData( // Widget 1: theme
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        
        useMaterial3: true,
      ),
      // Hauptwidget der App, was angezeigt werden soll.
      home: const MyHomePage( // Widget 2: home
          title:
              'Flutter Demo Home Page! :D'), // Wir übergeben eine Variable namens title mit dem Wert "Flutter Demo Home Page" an das Widget MyHomePage.
    );
  }
}

// ------------------------ STATEFULWIDGET ------------------------ //
// StatefulWidget = Status des Widgets kann sich ändern.

class MyHomePage extends StatefulWidget {
  
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() =>
      _MyHomePageState(); // Teilstatus des Widgets, der sich ändern kann.
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Variable _counter wird mit dem Wert 0 initialisiert.

  void _incrementCounter() {
    setState(() {
      // Diese Funktion wird aufgerufen, wenn der floatingActionButton gedrückt wird.
      // Die Variable _counter wird durch ++ jeweils um 1 erhöht.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Start des Widgets Scaffold Grundgerüsts für die App
      /* Darunter befinden sich die verschiedenen Widgets, die wir für die App verwenden wollen.
      Dazu zählen: appBar, body, floatingActionbutton etc */
      appBar: AppBar(
        // WIDGET 1: appBar

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget
            .title), // Variable title wird hier angezeigt. Diesen Wert haben wir in der Klasse MyHomePage übergeben, weiter oben
      ),
      body: Center(
        // WIDGET 2: body, dieser wird in der Mitte des Bildschirms angezeigt durch Center()

        child: Column(
          // Column() ist ein Widget, welches andere Widgets untereinander anordnet.

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter', // Hier wird die Variable _counter angezeigt, die wir weiter oben definiert haben.
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium, // Hier wird der Textstyle aus dem Theme verwendet. Die nachfolgenden Kommentare können nicht gelöscht werden, diese sind gegeben.
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // WIDGET 3: floatingActionButton
        onPressed:
            _incrementCounter, // Wenn der Button gedrückt wird, wird die Funktion _incrementCounter aufgerufen.
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    ); // Scaffold ist das Grundgerüst für das Widget, was hier abgeschlossen wird
  }
}
