import 'package:untitled/utils/extensions/extensions.dart';
import 'package:untitled/utils/helpers/helpers.dart';
import 'dart:math';

class Lottery {
  /// The name of the participant with their as Map
  ///
  /// The key is the name of participant and the value is their chance
  final MinLengthMap<String, int> nameAndChance;

  /// The list of participants with their chances
  ///
  /// If each participant has n chances,
  /// his name will be repeated n times in the list
  final List<String> participants = <String>[];

  /// The count of the rewards
  int countOfRewards = 10;

  /// The list of the winners
  final List<String> winners = <String>[];

  Lottery(this.nameAndChance) {
    _fillParticipants();
  }

  /// Added participant in list
  void _fillParticipants() {
    nameAndChance.forEach((name, chance) {
      participants.addWithCount(name, chance);
    });
  }

  /// Randomly selected participant to win
  ///
  /// It decrement [countOfRewards] in every stage,
  /// randomly select a participant and delete it from [participants]
  /// and add it to [winners]
  /// After all, prints [winners]
  void startLottery() {
    final random = Random();
    while (countOfRewards > 0) {
      int randomIndex = random.nextInt(participants.length);
      final winnerName = participants[randomIndex];
      winners.add(winnerName);
      participants.removeWhere((name) => name == winnerName);
      countOfRewards--;
    }
    winners.forEach(print);
  }
}
