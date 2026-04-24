import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_sql/firebase_options.dart';
import 'package:project_sql/src/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  //chama a tela inicial do app
  runApp(FilmesApp());
}