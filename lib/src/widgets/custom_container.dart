import 'package:flutter/material.dart';

Widget customContainer(Widget content) {
	return Center(
    child: LayoutBuilder(
      builder: (context, _) {
      	final screenSize = MediaQuery.of(context).size;

        return Container(
        	padding: const EdgeInsets.symmetric(horizontal: 10.0),
          width: screenSize.width * 0.9,
          height: screenSize.height * 0.84,
        	decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(30),
						color: Colors.white54,
						boxShadow: const <BoxShadow>[
							BoxShadow(
								color: Colors.black26,
								blurRadius: 10.0,
								spreadRadius: 2.0,
								offset: Offset(2.0, 10.0)
							),
						],
					),
          child: content
        );
      },
    ),
  );
}