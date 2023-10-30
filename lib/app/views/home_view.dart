import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String ticket = '';

  readQRCode() async {
    String code = await FlutterBarcodeScanner.scanBarcode(
      "#ff6666",
      "Cancelar",
      false,
      ScanMode.QR,
    );

    setState(
        () => ticket = code != '-1' ? code : 'Não foi possível ler o QRCode');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/tableHome.svg',
                          height: MediaQuery.of(context).size.height * 0.25),
                    ],
                  ),
                ),
                const Text(
                  'Bem-vindo ao EasyTable!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Para começar, leia o QRCode utilizando o botão abaixo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                SvgPicture.asset('assets/images/scanHome.svg',
                    height: MediaQuery.of(context).size.height * 0.2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: readQRCode,
                  icon: const Icon(Icons.qr_code_rounded),
                  label: const Text('Ler QRCode'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
