import 'package:test_project/utils/constants.dart';

class AreasAnalysis {
  String title;
  String imageUrl;

  AreasAnalysis(this.title, this.imageUrl);
}

List<AreasAnalysis> areasAnalysis = [
  AreasAnalysis("Forhead", AppConstants.forheadArea),
  AreasAnalysis("Lips", AppConstants.lipsArea),
  AreasAnalysis("Nose", AppConstants.noseArea),
  AreasAnalysis("Eyes", AppConstants.eyesArea),
  AreasAnalysis("Jaws", AppConstants.jawsArea),
  AreasAnalysis("Cheeks", AppConstants.cheeksArea),
];
