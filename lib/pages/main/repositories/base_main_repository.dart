import 'package:simple_flutter_mvvm/pages/main/models/user_model.dart';

abstract class BaseMainRepository {
  List<UserModel> getUsers();
}
