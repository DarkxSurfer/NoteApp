import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                          
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                                bottom: 10, top: 10, left: 10, right: 10),
                            
                          ),
                          cursorColor: Colors.black,
                          style: const TextStyle(color: Colors.black),
                        );
                      
  }
}
