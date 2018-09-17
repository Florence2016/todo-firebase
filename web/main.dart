import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart';
import 'package:todo/app_component.template.dart' as ng;

void main() {

    initializeApp(
        apiKey: "AIzaSyDblsaXDDU3t8z8owhT3mX3MYyxfUeHVIo",
        authDomain: "todo-d6e51.firebaseapp.com",
        databaseURL: "https://todo-d6e51.firebaseio.com",
        storageBucket: "todo-d6e51.appspot.com");

    runApp(ng.AppComponentNgFactory);
  }



