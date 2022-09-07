import 'package:todo/utils/serializable.dart';

class EmptyModel extends Serializable {
  const EmptyModel();

  @override
  Map<String, dynamic> toJson() => {};
}
