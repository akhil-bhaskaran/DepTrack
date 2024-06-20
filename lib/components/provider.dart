import 'package:flutter/cupertino.dart';

class MenuProvider extends ChangeNotifier {
//   // M A I N  S T R E A M

//   List<String> mFoodPic = [
//     'assets/chor.jpeg',
//     'assets/chapathi.jpeg',
//     'assets/dosa.jpeg',
//     'assets/porota.jpeg',
//     'assets/putt.jpeg',
//     'assets/vellapm.jpeg',

//     // C U R R Y

//     'assets/sambar.jpeg',
//     'assets/chicken.jpeg',
//     'assets/green.jpeg',
//     'assets/kadala.jpeg',
//     'assets/soya.jpeg',

//     // S I D E
//     'assets/ayala.jpeg',
//     'assets/mathi.jpeg',
//     'assets/om.jpeg',
//     'assets/papad.jpeg',

// // S N  A C K S

//     'assets/bond.jpeg',
//     'assets/parip.jpeg',
//     'assets/pazham.jpeg',
//     'assets/ulli.jpeg',
//   ];
//   List<String> mFoodName = [
//     'Rise',
//     'Chapathi',
//     'Dosa',
//     'Porotta',
//     "Putt",
//     "Vellapam"

//         // C U R R Y
//         'Samabar',
//     'Chicken Curry',
//     'Green beens',
//     'Kadala Curry',
//     "Soya Been",

// // S I D E
//     'Ayala Fry',
//     'Mathi Fry',
//     'Omelet',
//     'Papadam',

// // S N  A C K S
//   ];
  List<double> mFoodPrcie = [
    10,
    8,
    8,
    8,
    8,
  ];
  List<double> cFoodPrcie = [
    10,
    10,
    15,
    15,
    10,
  ];
  List<double> sFoodPrcie = [
    // S I D E
    10,
    5,
    10,
    2,
  ];
  List<double> snackFoodPrcie = [
    // S N  A C K S
    10,
    10,
    10,
    10,
  ];
  double totalPrice = 0;
  double todaysExpense = 0;

  void addSum(double price) {
    todaysExpense += price;
    totalPrice += price;

    notifyListeners();
  }

  void minus(double price) {
    totalPrice -= price;
    todaysExpense -= price;
    notifyListeners();
  }

  void clearPrice() {
    todaysExpense = 0;
    notifyListeners();
  }
}
