// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:finance_ui/app/app.dart';
import 'package:finance_ui/bootstrap.dart';

void main() {
  bootstrap(
    () => DevicePreview(
      enabled: true,
      builder: (context) => const App(),
    ),
  );
}
