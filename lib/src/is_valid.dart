import 'package:shortid/src/alphabet.dart' as alphabet;

bool isShortId(String shortId) {
  if (shortId == null || shortId.length < 7) {
    return false;
  }

  final characters = alphabet.get();

  for (var i = 0; i < shortId.length; i++) {
    if (!characters.contains(shortId[i])) {
      return false;
    }
  }

  return true;
}
