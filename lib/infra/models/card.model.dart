import 'package:flashcards/domain/entities/card.entity.dart';
import 'package:flashcards/utils/enums/extensions/integer.extension.dart';

class CardModel extends Card {
  CardModel({
    super.id,
    required super.frontInfo,
    required super.backInfo,
    required super.box,
    required super.totalViews,
    required super.totalCorrectAnsers,
    required super.totalWrongAnswers,
    super.lastView,
    super.nextView,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontInfo': frontInfo,
      'backInfo': backInfo,
      'box': box.number,
      'totalViews': totalViews,
      'totalCorrectAnsers': totalCorrectAnsers,
      'totalWrongAnswers': totalWrongAnswers,
      'lastView': lastView?.millisecondsSinceEpoch,
      'nextView': nextView?.millisecondsSinceEpoch,
    };
  }

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      id: map['id'] != null ? map['id'] as String : null,
      frontInfo: map['frontInfo'] as String,
      backInfo: map['backInfo'] as String,
      box: (map['box'] as int).boxNumberEnum,
      totalViews: map['totalViews'] as int,
      totalCorrectAnsers: map['totalCorrectAnsers'] as int,
      totalWrongAnswers: map['totalWrongAnswers'] as int,
      lastView: map['lastView'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['lastView'] as int)
          : null,
      nextView: map['nextView'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['nextView'] as int)
          : null,
    );
  }
}
