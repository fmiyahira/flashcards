import 'package:flashcards/utils/enums/box_number.enum.dart';

extension IntegerExt on int {
  BoxNumber get boxNumberEnum {
    switch (this) {
      case 1:
        return BoxNumber.boxOne;
      case 2:
        return BoxNumber.boxTwo;
      case 3:
        return BoxNumber.boxThree;
      case 4:
        return BoxNumber.boxFour;
      case 5:
        return BoxNumber.boxFive;
      default:
        return BoxNumber.boxOne;
    }
  }
}
