abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailer extends Failure {
  ServerFailer(super.errMessage);
}
