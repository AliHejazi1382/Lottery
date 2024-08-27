
import 'package:untitled/lottery/lottery.dart';
import 'package:untitled/utils/helpers/helpers.dart';

void main() async{
  final list = MinLengthMap({
    'Ali': 3,
    'Mohammad': 32,
    'Hossein': 2,
    'Hasan': 4,
    'Reza': 6,
    'Hadi': 7,
    'Mahdi': 3,
    'Gholam': 5,
    'Asghar': 2,
    'Karim': 6,

  });
  final lottery = Lottery(list);
  lottery.startLottery();

}

