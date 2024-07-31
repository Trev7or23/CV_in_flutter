import 'package:flutter/material.dart';
import 'package:Trev7or23/src/utils/variables.dart';

class TextResizer extends StatelessWidget {

	List<Widget> widgetContent;

	TextResizer({super.key, required this.widgetContent});

	@override
	Widget build(BuildContext context) {

		return LayoutBuilder(
			builder: (BuildContext context, BoxConstraints constraints) {
				final width = constraints.maxWidth;
				
				if ( width < 350 ) { size = width * 0.05; }
				else if (width > 351 && width < 550) { size = width * 0.045; }
				else if (width > 600 && width < 900) {size = width * 0.03;}
				else { size = width * 0.017; }

				return Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: widgetContent
				);
			}
		);
	}
}