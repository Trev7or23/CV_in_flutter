
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:Trev7or23/src/utils/variables.dart';

Widget cuteText(String textContent) {

	return AutoSizeText(
	  textContent,
	  style: TextStyle(
	    color: Colors.black,
	    fontWeight: FontWeight.bold,
	    fontSize: size
	  ),
	  maxLines: 10,
	  overflow: TextOverflow.ellipsis,
	  textAlign: TextAlign.center,
	  
	);
	
}