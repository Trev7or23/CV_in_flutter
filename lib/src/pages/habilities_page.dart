import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:Trev7or23/src/utils/variables.dart';
import 'package:Trev7or23/src/widgets/custom_container.dart';

class HabilitiesPage extends StatefulWidget {
	const HabilitiesPage({super.key});

	@override
	  State<StatefulWidget> createState() => _HabilitiesPageState();

}

class _HabilitiesPageState extends State {
	double fontSize = 1;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(title: Center(child: Text('Mis Habilidades', style: textStyle,))),
			body: customContainer(changeTextFontSize(context, _widgetContent())),
		);
	}


	List<Widget> _widgetContent() {
		return <Widget> [
			const SizedBox(height: 15.0),
			Align(alignment: Alignment.center, child: _modifiedText('Tecnologias que uso actualmente🎓')),
			const Divider(),
			Align(alignment: Alignment.center, child: _modifiedText('Flutter (Dart)')),
			const SizedBox(height: 15.0),
			Align(alignment: Alignment.center,child: _modifiedText('Tengo pocos meses de estudio y experiencia🎓 pero soy capaz de desarrollar apps sin restriccion👾. Esta app esta escrita en el')),
			const Divider(),
			Align(alignment: Alignment.center, child: _modifiedText('Spring boot (Java)')),
			const SizedBox(height: 15.0),
			Align(alignment: Alignment.center,child: _modifiedText('tengo experiencia creando microservicios. Bots de telegram 📨 y cosas varias')),
			const Divider(),
			Align(alignment: Alignment.center, child: _modifiedText('Laravel (PHP)')),
			const SizedBox(height: 15.0),
			Align(alignment: Alignment.center,child: _modifiedText('Actuamente no lo utilizo pero he desarrollado alguna paginas con este 📦')),
			const Divider(),
			Align(alignment: Alignment.center, child: _modifiedText('FastApi (Python)')),
			const SizedBox(height: 15.0),
			Align(alignment: Alignment.center,child: _modifiedText('Para crear apis rest rapidas, seguras y flexibles🔐')),
		];
	}



	Widget _modifiedText(String textContent){
		return AutoSizeText(
		  textContent,
		  style: TextStyle(
		    color: Colors.black,
		    fontWeight: FontWeight.bold,
		    fontSize: fontSize
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