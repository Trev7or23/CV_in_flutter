import 'package:flutter/material.dart';
import 'package:Trev7or23/src/widgets/snack_bar_error.dart';
import 'package:url_launcher/url_launcher.dart';

class StartingButton extends StatelessWidget {

	late String buttonName;
	late String? route;
	
	StartingButton({
		super.key, 
		required this.buttonName, 
		this.route
	});

	@override
	Widget build(BuildContext context) {

		return LayoutBuilder(
			builder: (BuildContext context, BoxConstraints constraints) {
				final screenSize = MediaQuery.of(context).size;

				double height = screenSize.height * 0.09;
				double originalWidth = screenSize.width;
				late double width;

				if (originalWidth < 680){ width = originalWidth * 0.5; }
				else { width = originalWidth * 0.2; }
				return _buttonProperties(context, width, height);
			},
		);


		
	}

	_buttonProperties(BuildContext context, double width, double height) {
		return SizedBox(
			width: width,
			height: height,

			child: ElevatedButton(
				onPressed: _onPressedButton(context),
				style: TextButton.styleFrom(
					backgroundColor: Colors.white54,
					foregroundColor: Colors.black,
					elevation: 10.0,
					shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
					minimumSize: Size.infinite,
				),
				child: FittedBox(fit: BoxFit.scaleDown, child: Text(buttonName, style: const TextStyle(fontWeight: FontWeight.bold)),),
			),
		);
	}

	void Function() _onPressedButton(BuildContext context) {

		if (buttonName == 'Mi Telegram') {
			return () async {
				const url = 'https://t.me/Trev7or23';

				if (await canLaunch(url)) {
					await launch(url);
				} else {
					snackBarError(context, 'Error: no se ha podido cargar el enlace: $url');
				}
			};
		}
		else {
			return () => Navigator.pushNamed(context, route!);
		}
	}
}