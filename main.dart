// import 'package:flutter/material.dart';
// import 'package:encrypt/encrypt.dart' as encrypt;
// import 'my_encryption.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   //Useful variable
//   TextEditingController tec = TextEditingController();
//   TextEditingController dec = TextEditingController();
//   var encryptedText, plaintext, encryptedtext;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Encryption and Decryption"),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: tec,
//                   ),
//                   TextFormField(
//                     controller: dec,
//                   ),
//                 ],
//               ),
//             ),

//             //Outcome printed
//             Column(
//               children: [
//                 Text(
//                   "Plain Text",
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.blue,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     children: [
//                       Text(plaintext == null ? "" : plaintext),
//                       //Text(encryptedtext == null ? "" : encryptedtext),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Column(
//               children: [
//                 Text(
//                   "Encrypted Text",
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.blue,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(encryptedText == null
//                       ? ""
//                       : encryptedText is encrypt.Encrypted
//                           ? encryptedText.base64
//                           : encryptedText),
//                 )
//               ],
//             ),

//             //button
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     plaintext = tec.text;
//                     setState(() {
//                       encryptedText =
//                           MyEncryptionDecryption.encryptAES(plaintext);
//                     });
//                   },
//                   child: Text("Encrypt"),
//                 ),

//                 ///////////////////////////////////////////////
//                 SizedBox(
//                   width: 10,
//                 ),
//                 //////////////////////////////////////////////

//                 ElevatedButton(
//                   onPressed: () {
//                     encryptedtext = dec.text;
//                     setState(() {
//                       encryptedText =
//                           MyEncryptionDecryption.decryptAES(encryptedtext);
//                     });
//                   },
//                   child: Text("Decrypt"),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'my_encryption.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Useful variable
  TextEditingController tec = TextEditingController();
  TextEditingController dec = TextEditingController();
  var encryptedText, plaintext, encryptedtext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Decryption"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: dec,
                    decoration: InputDecoration(
                      labelText: 'Insert Encryption Text To Decrypt',

                      //contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
              ),
            ),

            //Outcome printed
            // Column(
            //   children: [
            //     Text(
            //       "Plain Text",
            //       style: TextStyle(
            //           fontSize: 25,
            //           color: Colors.blue,
            //           fontWeight: FontWeight.w600),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         children: [
            //           Text(plaintext == null ? "" : plaintext),
            //           //Text(encryptedtext == null ? "" : encryptedtext),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            Column(
              children: [
                const Text(
                  "Raw Text",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(encryptedText == null
                      ? ""
                      : encryptedText is encrypt.Encrypted
                          ? encryptedText.base64
                          : encryptedText),
                )
              ],
            ),

            //button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ElevatedButton(
                //   onPressed: () {
                //     plaintext = tec.text;
                //     setState(() {
                //       encryptedText =
                //           MyEncryptionDecryption.encryptAES(plaintext);
                //     });
                //   },
                //   child: Text("Encrypt"),
                // ),

                ///////////////////////////////////////////////
                SizedBox(
                  width: 10,
                ),
                //////////////////////////////////////////////

                ElevatedButton(
                  onPressed: () {
                    encryptedtext = dec.text;
                    setState(() {
                      encryptedText =
                          MyEncryptionDecryption.decryptAES(encryptedtext);
                    });
                  },
                  child: Text("Decrypt"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
