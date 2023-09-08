sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class SendCodeLoading extends ForgetPasswordState {}

final class SendCodeSucess extends ForgetPasswordState {
    final String message;

  SendCodeSucess({required this.message});

}

final class SendCodeError extends ForgetPasswordState {
  final String message;

  SendCodeError(this.message);
}
