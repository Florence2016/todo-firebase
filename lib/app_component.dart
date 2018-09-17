
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:todo/component/footer/footer_component.dart';
import 'package:todo/component/header/header_component.dart';
import 'package:todo/component/note/new_note_component.dart';
import 'package:todo/component/note/notes_component.dart';

import 'package:todo/firebase_service.dart';



@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [
    coreDirectives,
    HeaderComponent,
    FooterComponent,
    NotesComponent,
    NewNoteComponent
  ],
  providers: const [FirebaseService],
)
class AppComponent implements OnInit{
  final FirebaseService service;

  AppComponent(this.service);

  @override
  ngOnInit() {
    service.init();
  }

}
