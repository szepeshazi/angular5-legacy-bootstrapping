import 'package:angular/angular.dart';
import 'package:angular_app/app_component.dart';
import 'package:angular_app/app_component.template.dart' as ng;
import 'package:angular_app/src/name_service.dart';
import 'main.template.dart' as self;


const List<Object> classProviders = [
  ClassProvider(NameService)
];

const List<Object> factoryProviders = [
  FactoryProvider(NameService, createNameService)
];

@GenerateInjector(classProviders)
final InjectorFactory injector = self.injector$Injector;


void main() {
  // New bootstrapping works correctly
  // runApp(ng.AppComponentNgFactory, createInjector: injector);

  // Legacy bootstrapping with factory providers works correctly
  // runAppLegacy(AppComponent, createInjectorFromProviders: factoryProviders, initReflector: self.initReflector);

  // Legacy bootstrapping with class providers results in uncaught exception
  runAppLegacy(AppComponent, createInjectorFromProviders: classProviders, initReflector: self.initReflector);
}

NameService createNameService() => NameService();
