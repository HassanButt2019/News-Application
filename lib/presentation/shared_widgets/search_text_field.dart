



import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
                title:TextFormField(
                //  controller: controller,
                  style: const TextStyle(
                    fontSize: 14,
                  color: Colors.red,
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Comment',
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,                      ),
                    ),
                  ),
                ),
                trailing: TextButton(
                  onPressed: () =>{},
                  child: const Text(
                    'Send',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,                    ),
                  ),
                ),

              );
  }
}

