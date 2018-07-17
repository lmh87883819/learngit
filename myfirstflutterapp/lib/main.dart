// import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   MyAppBar({this.title});

//   // Widget子类中的字段往往都会定义为"final"

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: new BoxDecoration(color: Colors.blue[500]),
//       // Row 是水平方向的线性布局（linear layout）
//       child: new Row(
//         //列表项的类型是 <Widget>
//         children: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null 会禁用 button
//           ),
//           // Expanded expands its child to fill the available space.
//           new Expanded(
//             flex:1,
//             child: title,
//           ),
//           new IconButton(
//             icon: new Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Material 是UI呈现的“一张纸”
//     return new Material(
//       // Column is 垂直方向的线性布局.
//       child: new Column(
//         children: <Widget>[
//           new MyAppBar(
//             title: new Text(
//               'My title',
//               style: Theme.of(context).primaryTextTheme.title,
//             ),
//           ),
//           new Expanded(
//             child: new Center(
//               child: new Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(new MaterialApp(
//     title: 'My app', // used by the OS task switcher
//     home: new MyScaffold(),
//   ));
// }

// import 'package:flutter/material.dart';
// import 'package:myfirstflutterapp/myButton.dart';

// class TutorialHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //Scaffold是Material中主要的布局组件.
//     return new Scaffold(
//       appBar: new AppBar(
//         leading: new IconButton(
//           icon: new Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           onPressed: null,
//         ),
//         title: new Text('Flutter Tutorial'),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       //body占屏幕的大部分
//       body: new Center(
//         child: new Text('Hello, world!'),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         tooltip: 'Add', // used by assistive technologies
//         child: new Icon(Icons.add),
//         onPressed: null,
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     title: 'My app', // used by the OS task switcher
//     home: new Counter(),
//   ));
// }

// class CounterDisplay extends StatelessWidget {
//   CounterDisplay({this.count});

//   final int count;

//   @override
//   Widget build(BuildContext context) {
//     return new Text('Count: $count');
//   }
// }

// class CounterIncrementor extends StatelessWidget {
//   CounterIncrementor({this.onPressed});

//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return new RaisedButton(
//       onPressed: onPressed,
//       child: new Text('Increment'),
//     );
//   }
// }

// class Counter extends StatefulWidget {
//   @override
//   _CounterState createState() => new _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _increment() {
//     setState(() {
//       ++_counter;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Row(children: <Widget>[
//       new CounterIncrementor(onPressed: _increment),
//       new CounterDisplay(count: _counter),
//     ]);
//   }
// }

import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/shoppingList.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Shopping App',
    home: new ShoppingList(
      products: <Product>[
        new Product(name: 'Eggs'),
        new Product(name: 'Flour'),
        new Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}

