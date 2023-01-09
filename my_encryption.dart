// import 'package:encrypt/encrypt.dart' as encrypt;
// //import 'package:flutter/cupertino.dart';

// class MyEncryptionDecryption {
//   //AES

//   static final key = encrypt.Key.fromLength(32);
//   static final iv = encrypt.IV.fromLength(16);
//   static final encrypter = encrypt.Encrypter(encrypt.AES(key));

//   static encryptAES(text) {
//     final encrypted = encrypter.encrypt(text, iv: iv);

//     //print(encrypted.bytes);
//     //print(encrypted.base16);
//     print(iv.base64);
//     print(key.base64);
//     print(encrypted.base64);
//     return encrypted;
//   }

//   static decryptAES(text) {
//     return encrypter.decrypt(text, iv: iv);
//   }
// }
// // import 'dart:convert';
// // import 'package:encrypt/encrypt.dart' as encrypt;
// // import 'package:path/path.dart' as path;
// // import 'package:flutter/services.dart' show rootBundle;

// // class MyEncryptionDecryption {
// //   static final key = encrypt.Key.fromLength(32);
// //   static final iv = encrypt.IV.fromLength(16);
// //   static final encrypter = encrypt.Encrypter(encrypt.AES(key));
// //   //static final decrypter = encrypt.Decrypter(encrypt.AES(key));

// //   static Future<List<encrypt.Encrypted>> saveKeyAndIV() async {
// //     final keyFile = await rootBundle.load(path.join('keys', 'key.txt'));
// //     final ivFile = await rootBundle.load(path.join('keys', 'iv.txt'));
// //     final keyString = utf8.decode(keyFile.buffer.asUint8List());
// //     final ivString = utf8.decode(ivFile.buffer.asUint8List());
// //     final key = encrypt.Key.fromBase64(keyString);
// //     final iv = encrypt.IV.fromBase64(ivString);
// //     return [key, iv];
// //   }

// //   static Future<void> encryptAES(text) async {
// //     final encrypted = encrypter.encrypt(text, iv: iv);
// //     print(encrypted.bytes);
// //     // Save the encrypted data and the key and IV to a file or database
// //   }

// //   static Future<void> decryptAES([encryptedText]) async {
// //     // Read the encrypted data, key, and IV from a file or database
// //     final encrypted = encrypt.Encrypted.fromBase64('encrypted data');
// //     final keyAndIV = await saveKeyAndIV();
// //     final key = keyAndIV[0];
// //     final iv = keyAndIV[1];
// //     // final decrypted = decrypter.decrypt(encrypted, iv: iv);
// //     // print(decrypted);
// //   }
// // }
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class MyEncryptionDecryption {
  //AES

  static final key = encrypt.Key.fromUtf8(
      '1234123456789878'); //encrypt.Key.fromLength(1234123456789878);
  static final iv = encrypt.IV.fromUtf8('1234567898765432');
  static final encrypter = encrypt.Encrypter(encrypt.AES(key));

  static encryptAES(text) {
    final encrypted = encrypter.encrypt(text, iv: iv);

    //print(encrypted.bytes);
    //print(encrypted.base16);
    //print(iv.base64);
    //print(key.base64);
    print(encrypted.bytes);
    print(encrypted.base16);
    print(encrypted.base64);
    return encrypted;
  }

  static decryptAES(text) {
    //final encrypted = encrypt.Encrypted.fromBase64("6ryK2avjAVudYpLCIL+VV4J+lQztYKItSqou/kr+g9c=");
    final encrypted = encrypt.Encrypted.fromBase64(text);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);

    print(decrypted);

    return decrypted;
    //return encrypter.decrypt(text, iv: iv);
    //print(decryptAES("vuu345DbOG2iXq/4G4esYQ=="));
  }
}
