import 'package:flutter/material.dart';
import 'package:cardify/constants.dart';

import '../constants.dart';

class AccountsView extends StatefulWidget {
  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  openDialogBox() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            title: Text('Add Account'),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Bank Name",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Initial Balance",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Account Holder Name",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Account Type",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 65,
                                child: FlatButton(
                                  color: Colors.transparent,
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: kPrimaryColor, fontSize: 15),
                                  ),
                                ),
                              ),
                              // SizedBox(width: 3),
                              SizedBox(
                                width: 65,
                                child: RaisedButton(
                                  color: kPrimaryColor,
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    "Save",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  onPressed: () {
                                    // if (_formKey.currentState.validate()) {
                                    //   _formKey.currentState.save();
                                    // }
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Accounts',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  ),
                  onPressed: () {
                    openDialogBox();
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AccountWidget(),
            AccountWidget(),
            AccountWidget(),
            AccountWidget(),
            AccountWidget(),
            AccountWidget(),
            AccountWidget(),
          ],
        ),
      ),
    );
  }
}

class AccountWidget extends StatefulWidget {
  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        height: 100,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
