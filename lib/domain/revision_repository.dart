import 'package:injectable/injectable.dart';
import 'package:todo/data/revision_api/revision_api.dart';

@injectable
class RevisionRepository {
  const RevisionRepository({
    required RevisionApi revisionApi,
  }) : _revisionApi = revisionApi;

  final RevisionApi _revisionApi;

  int get() => _revisionApi.get();

  Future<void> set(int newRevision) => _revisionApi.set(newRevision);
}
