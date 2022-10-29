


import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:Theme(
        data: Theme.of(context).copyWith(splashColor: Colors.transparent),
        child: TextField(
          autofocus: false,
          style: TextStyle(fontSize: 15.0, color: Colors.black),
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: 'Name Of Customer',

            contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(25.7),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(25.7),
            ),
          ),
        ),
      ),

      decoration: new BoxDecoration (
          borderRadius: new BorderRadius.all(new Radius.circular(30.0)),
          color: Colors.white   ),
    );
  }
}
