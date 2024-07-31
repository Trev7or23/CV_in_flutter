import 'package:flutter/material.dart';
import 'package:Trev7or23/src/pages/habilities_page.dart';

import 'package:Trev7or23/src/pages/home_page.dart';
import 'package:Trev7or23/src/pages/about_me_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
	return <String, WidgetBuilder>{
    '/'      : (BuildContext context)=> const HomePage(),
    'about_me' : (BuildContext context)=> const AboutMePage(),
    'habilities' : (BuildContext context)=> const HabilitiesPage(),
	};
}