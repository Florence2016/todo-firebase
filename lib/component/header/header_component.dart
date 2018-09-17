import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import '../../firebase_service.dart';

@Component(
    selector: 'layout-header',
    templateUrl: 'header_component.html',
    styleUrls: ['header_component.css'],
    directives: const [coreDirectives, MaterialInputComponent,MaterialButtonComponent,MaterialIconComponent,])
class HeaderComponent {

  final FirebaseService service;
  HeaderComponent(this.service,);

  bool hideCode = true;
  bool secure = false;
  String errorMessage;

  void secures(String code){
    code = code.trim();
    if(code.isEmpty){
      secure = false;
      errorMessage = "";
      return null;

    }
    else if (code == 'lifelogbatasan'){
      secure = true;
      errorMessage = "";
      hideCode = false;
    }
    else{
      errorMessage = "You are not Admin user";
      secure = false;
    }
  }
}