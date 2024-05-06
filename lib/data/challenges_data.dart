import '/presentation/presentation.dart';
import '/models/challenge_model.dart';

final List<ChallengeModel> challenges = [
  ChallengeModel(
    number: '01',
    title: 'Sign Up', 
    imgPreview: '01/preview.png', 
    route: Screen01.routeName
  ),
  ChallengeModel(
    number: '02',
    title: 'Let\'s Gonuts!', 
    imgPreview: '02/preview.png', 
    route: Screen02.routeName
  ),
  ChallengeModel(
    number: '03',
    title: 'Instagram UI Clone', 
    imgPreview: '02/preview.png', 
    route: Screen03.routeName
  ),
];