import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_auth/widgets/user_list_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Names',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Names Vote')),
      body: _buildBody(context),
    );
  }

  /// Body widget build that returns the list of the names
  Widget _buildBody(BuildContext context) {
    // TODO: get actual snapshot from Cloud Firestore
    return Column(
      verticalDirection: VerticalDirection.down,
      children: [
        StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection('users').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return LinearProgressIndicator();
              return _buildList(context, snapshot.data.documents);
            },
        ),
        _buildForm()
      ],
    );
  }

  /// Build the names in list form
  /// @param {array} - array of objects with name and vote count properties
  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return Expanded(
        child: ListView(
          padding: const EdgeInsets.only(top: 20.0),
          children: snapshot.map((data) => UserListItem(context, data)).toList(),
        )
    );
  }

   /// Build form to add new names
  Widget _buildForm() {
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: myTextController,
            decoration: const InputDecoration(
              hintText: 'Enter name here'
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Firestore.instance.collection('users').add({
                    'name': '${myTextController.text}',
                    'votes': 0
                  });
                  myTextController.clear();
                }
              },
              child: Text('Add name'),
            ),
          )
        ],
      )
    );
  }

  @override
  void dispose() {
    myTextController.dispose();
    super.dispose();
  }
}
