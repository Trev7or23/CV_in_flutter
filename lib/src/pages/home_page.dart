import 'package:flutter/material.dart';
import 'package:Trev7or23/src/utils/variables.dart';
import 'package:Trev7or23/src/widgets/starting_button.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white54,
        title: Center(
          child: Text("Trev7or23: CV", style: textStyle),
        ),
      ),
      body: _buttonsList(),
    );
  }

  Widget _buttonsList() {
    const separationValue = 27.0;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              const SizedBox(height: separationValue * 2),
              StartingButton(buttonName: 'Sobre Mi', route: 'about_me'),
              const SizedBox(height: separationValue),
              StartingButton(buttonName: 'Habilidades', route: 'habilities'),
              const SizedBox(height: separationValue),
              StartingButton(buttonName: 'Mi Telegram'),
            ],
          )
        ]
      )
    );
  }
}
