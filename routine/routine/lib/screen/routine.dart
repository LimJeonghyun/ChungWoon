import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoutineScreen extends StatefulWidget {
  const RoutineScreen({Key? key}) : super(key: key);

  @override
  _RoutineScreenState createState() => _RoutineScreenState();
}

class _RoutineScreenState extends State<RoutineScreen> {
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: _bodyWidget(),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      elevation: 1,
      title: Text("ROUTINE"),
      centerTitle: true,
    );
  }

  Widget _bodyWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.only(),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    color: Colors.black, width: 3.0, style: BorderStyle.solid)),
          ),
          Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.only(),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                    color: Colors.black, width: 3.0, style: BorderStyle.solid)),
            child: Text("test1"),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            icon: Icon(Icons.add),
            label: Text("NEW ROUTINE"),
          ),
          // _MyButton(),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("NEW ROUTINE"),
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          actions: <Widget>[
            TextButton(
              child: Text('SAVE'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                '\nRoutine Name',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
              ),
              TextField(
                  decoration: InputDecoration(
                labelText: 'Routine Name',
              )),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage()),
                  );
                },
                icon: Icon(Icons.add),
                label: Text("ADD"),
              ),
            ],
          ),
        ));
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("NEW ROUTINE"),
          centerTitle: true,
        ),
        body: Column());
  }
}

// class _MyButton extends StatefulWidget {
//   @override
//   _MyButtonState createState() => _MyButtonState();
// }
//
// class _MyButtonState extends State<_MyButton> {
//   bool _active = false;
//
//   _setActive() {
//     setState(() {
//       _active = !_active;
//     });
//   }
// }

// Widget build(BuildContext context) {
//   return GestureDetector(
//     onTap: () {
//       print('onTap');
//       _setActive();
//     },
//     child: Container(
//       decoration: BoxDecoration(
//         border: Border.all(
//           color: _active ? Colors.red : Colors.black,
//           width: 2,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//       width: 300,
//       height: 80,
//       alignment: Alignment.center,
//       child: Icon(Icons.add),
//     ),
//   );
// }
