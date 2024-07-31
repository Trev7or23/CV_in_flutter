import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:Trev7or23/src/utils/variables.dart';
import 'package:Trev7or23/src/widgets/custom_container.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  _AboutMePageState createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  double fontSize = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Sobre Mi', style: textStyle))),
      body: customContainer(changeTextFontSize(context, _widgetContent())),
    );
  }

  List<Widget> _widgetContent() {
    return <Widget>[
      const SizedBox(height: 15.0),
      Align(alignment: Alignment.center, child: _modifiedText('💬 Hola, me llamo Trev7or23')),
      const Divider(),
      Align(alignment: Alignment.center, child: _modifiedText('Soy Desarrollador Mobile📱 && Backend🖥')),
      const SizedBox(height: 15.0),
      Align(alignment: Alignment.center, child: _modifiedText('Un poco de mi historia🧐')),
      const Divider(),
      _modifiedText('Empeze en el mundo del software con 15 años🤓, por el desarrollo de videojuegos🕹️. Con el tiempo fui mostrando interes por el desarrollo de aplicaciones web✉️ Backend, Principalmente por la seguridad🔒 y la Escalabilidad de estos. Actualmente estoy desarrollando apps mobile📱.')
    ];
  }

  Widget _modifiedText(String textContent) {
    return AutoSizeText(
      textContent,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
    );
  }

  Widget changeTextFontSize(BuildContext context, List<Widget> widgetContent) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;

        // Calcular el nuevo tamaño de la fuente
        double newFontSize;
        if (width < 350) {
          newFontSize = width * 0.05;
        } else if (width > 351 && width < 550) {
          newFontSize = width * 0.045;
        } else if (width > 600 && width < 900) {
          newFontSize = width * 0.025;
        } else {
          newFontSize = width * 0.017;
        }

        // Programar la actualización del tamaño de la fuente
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (newFontSize != fontSize) {
            setState(() {
              fontSize = newFontSize;
            });
          }
        });

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widgetContent,
        );
      },
    );
  }
}