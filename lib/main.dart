import 'package:flutter/material.dart';

// import 'Lec_29_Container.dart';
// import 'Lec_30_Center.dart';
// import 'Lec_31_Text.dart';
// import 'Lec_32_buttons.dart';
// import 'Lec_33_assetImg.dart';
// import 'Lec_34_Row_Col.dart';
// import 'Lec_35_InkWell.dart';
// import 'Lec_36_ScrollView.dart';
// import 'Lec_37_ListView.dart';
// import 'Lec_40_Decoration.dart';
// import 'Lec_41_Expanded.dart';
// import 'Lec_42_PaddingMargin.dart';
// import 'Lec_43_ListTile.dart';
// import 'Lec_44_CircleAvatar.dart';
// import 'Lec_45_CustomFont.dart';
// import 'Lec_46_StylesThemes.dart';
// import 'Lec_47_Card.dart';
// import 'Lec_48_UserInput.dart';
// import 'Lec_49_CurrDateTime.dart';
// import 'Lec_50_DateFormat.dart';
// import 'Lec_51_DateTimePicker.dart';
// import 'Lec_52_GridView.dart';
// import 'Lec_53_Callback.dart';
// import 'Lec_54_CustomWidget.dart';
// import 'Lec_55_Stack.dart';
// import 'Lec_56_CustomWidget.dart';
// import 'Lec_57_WrapWidget.dart';
// import 'Lec_58_SizeBox.dart';
// import 'Lec_59_RichTextWidget.dart';
// import 'Lec_60_IconWidget.dart';
// import 'Lec_61_FontAwesomeIcon.dart';
// import 'Lec_62_Positioned.dart';
// import 'Lec_63_StatefulAndStatelessWidget.dart';
// import 'Lec_64_StatefulBasicCalc.dart';
// import 'Lec_65_ConstraintBox.dart';
// import 'Lec_66_ScreenNavigator.dart';
// import 'Lec_67_SplashScreen.dart';
// import 'Lec_68_DataPassingOnePageToAnother.dart';
// import 'Lec_69_RangeSlider.dart';
// import 'Lec_70_BMIApp.dart';
// import 'Lec_71_AnimatedContainer.dart';
// import 'Lec_72_AnimatedOpacity.dart';
// import 'Lec_73_AnimatedCrossFade.dart';
// import 'Lec_74_AnimatedHeroWidget.dart';
// import 'Lec_75_ListWheelScrollView.dart';
// import 'Lec_76_ClipRRect.dart';
// import 'Lec_77_Gradient.dart';
// import 'Lec_78_MapListToWidget.dart';
// import 'Lec_79_TweenAnimation.dart';
// import 'Lec_80_RippleAnimation.dart';
// import 'Lec_81_SharedPreferences.dart';
import 'Lec_82_SharedPreferenceLoginApp_SplashScreen.dart';

/* Start
// flutter code setUp

// void main() {
//   runApp(PractiseApp());
// }
//
// class PractiseApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Practise App",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//
//       // home: Lec29(),
//       // home: Lec30(),
//       // home: Lec31(),
//       // home: Lec32(),
//       // home: Lec33(),
//       // home: Lec34(),
//       // home: Lec35(),
//       // home: Lec36(),
//       // home: Lec37(),
//       home: DashBoardScreen(),
//     );
//   }
// }
//
// class DashBoardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("DashBoardScreen"),
//         backgroundColor: Colors.blue,
//       ),
//       body: Center(
//         child: Container(
//           width: 200,
//           height: 200,
//           color: Colors.green,
//           child: Center(
//             child: Text(
//               "Hello World!",
//               style: TextStyle(
//                 fontSize: 21,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

End */


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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(
          color: Colors.indigo,
          foregroundColor: Colors.white,
        ),

        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
            fontFamily: "Poppins",
            letterSpacing: 1.5,
          ),
        ),
      ),
      // home: Lec29(),
      // home: Lec30(),
      // home: Lec31(),
      // home: Lec32(),
      // home: Lec33(),
      // home: Lec34(),
      // home: Lec35(),
      // home: Lec36(),
      // home: Lec37(),
      // home: Lec40(),
      // home: Lec41(),
      // home: Lec42(),
      // home: Lec43(),
      // home: Lec44(),
      // home: Lec45(),
      // home: Lec46(),
      // home: Lec47(),
      // home: Lec48(),
      // home: Lec49(),
      // home: Lec50(),
      // home: Lec51(),
      // home: Lec52(),
      // home: Lec53(),
      // home: Lec54(),
      // home: Lec55(),
      // home: Lec56(),
      // home: Lec57(),
      // home: Lec58(),
      // home: Lec59(),
      // home: Lec60(),
      // home: Lec61(),
      // home: Lec62(),
      // home: Lec63(),
      // home: Lec64(),
      // home: Lec65(),
      // home: Lec66(),
      // home: Lec67(),
      // home: Lec68(),
      // home: Lec69(),
      // home: Lec70BMIApp(),
      // home: Lec71(),
      // home: Lec72(),
      // home: Lec73(),
      // home: Lec74(),
      // home: Lec75(),
      // home: Lec76(),
      // home: Lec77(),
      // home: Lec78(),
      // home: Lec79(),
      // home: Lec80(),
      // home: Lec81(),
      home: Lec82LoginApp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
