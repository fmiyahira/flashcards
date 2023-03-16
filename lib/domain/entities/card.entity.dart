import 'package:flashcards/utils/enums/box_number.enum.dart';

class Card {
  String? id;
  String frontInfo;
  String backInfo;
  BoxNumber box;
  int totalViews;
  int totalCorrectAnsers;
  int totalWrongAnswers;
  DateTime? lastView;
  DateTime? nextView;

  Card({
    this.id,
    required this.frontInfo,
    required this.backInfo,
    required this.box,
    required this.totalViews,
    required this.totalCorrectAnsers,
    required this.totalWrongAnswers,
    this.lastView,
    this.nextView,
  });
}
