import 'package:test_project/utils/constants.dart';

class FocusPoints {
  String heading;
  String subHeading;
  String imageUrl;

  FocusPoints(this.heading, this.subHeading, this.imageUrl);
}

List<FocusPoints> focusPoints = [
  FocusPoints("Lips", "Shape your lips with Yoga", AppConstants.womanLips),
  FocusPoints(
      "Forhead", "Shape your lips with Yoga", AppConstants.womanForhead),
  FocusPoints("Nose", "Shape your lips with Yoga", AppConstants.womanNose),
  FocusPoints("Cheeks", "Shape your lips with Yoga", AppConstants.womanCheeks),
  FocusPoints("Eyes", "Shape your lips with Yoga", AppConstants.womanEyes),
  FocusPoints("Jaws", "Shape your lips with Yoga", AppConstants.womanJaws)
];
