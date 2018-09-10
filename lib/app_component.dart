import 'package:angular/angular.dart';
import 'package:angular_app/src/name_service.dart';

@Component(
  selector: 'my-app',
  template: '<h1>Hello {{name}}</h1>',
)
class AppComponent {

  String name;

  final NameService nameService;

  AppComponent(this.nameService) {
    name = nameService.any;
  }

}
