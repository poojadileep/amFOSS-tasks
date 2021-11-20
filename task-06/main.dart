import 'package:flutter/material.dart';

void main() {
runApp(MaterialApp(
	initialRoute: '/',
	routes: {
	'/': (context) => HomeRoute(),
	'/second': (context) => SecondRoute(),
	'/third': (context) => ThirdRoute(),
	},
));
}

class HomeRoute extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text('Meditation'),
		backgroundColor: Colors.pink.shade100,
	),
	body: Center(
		child: Column(
		children: <Widget>[
		RaisedButton(
			child: Text('skip'),
			onPressed: () {
			Navigator.pushNamed(context, '/second');
			},
		),
	

		],
	)),
	);
}
}

class SecondRoute extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("Welcome"),
		backgroundColor: Colors.pink.shade100,
	),
	body: Center(
		child: RaisedButton(
		onPressed: () {
			Navigator.pop(context);
		},
		child: Text('Back!'),
		),
	),
	);
}
}

class ThirdRoute extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: Text("Tap Me Page"),
		backgroundColor: Colors.green,
	),
	);
}
}
