import 'dart:async';
import 'dart:io';

main(List<String> arguments) async {
  List<int> bytes = await new File(arguments[0]).readAsBytes();
  File file = await new File(arguments[1]).create();
  await file.writeAsBytes(bytes);
}