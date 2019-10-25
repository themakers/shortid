import 'package:shortid/shortid.dart';
import 'package:test/test.dart';

void main() {
  test('generated short id is valid', () {
    final id = shortid.generate();
    expect(shortid.isValid(id), equals(true));
  });
  test('short id with length less than 7 is not valid', () {
    expect(shortid.isValid('fkgj'), equals(false));
  });
  test('short id with non alphabet chars is not valid', () {
    expect(shortid.isValid('fkgj!@#%^&*()+=|/'), equals(false));
  });
  test('short id with non alphabet chars in alphabet is valid', () {
    shortid.characters('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_!');
    expect(shortid.isValid('fkgjsdfgsdf!'), equals(true));
  });
}