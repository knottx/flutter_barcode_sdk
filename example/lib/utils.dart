import 'package:flutter_barcode_sdk/flutter_barcode_sdk.dart';

String getBarcodeResults(List<BarcodeResult> results) {
  StringBuffer sb = new StringBuffer();
  for (BarcodeResult result in results) {
    sb.write(result.format);
    sb.write("\n");
    sb.write(result.text);
    sb.write("\n\n");
  }
  if (results.length == 0) sb.write("No Barcode Detected");

  return sb.toString();
}
