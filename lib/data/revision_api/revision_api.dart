abstract class RevisionApi {
  const RevisionApi();

  int get();

  Future<void> set(int newRevision);
}
