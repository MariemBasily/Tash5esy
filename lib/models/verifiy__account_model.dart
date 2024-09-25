class PhoneVerificationModel {
  String? phoneNumber;
  String? verificationCode;

  PhoneVerificationModel({this.phoneNumber});

  Future<void> sendVerificationCode() async {
    // Logic to send verification code to the user's phone number
    print("Verification code sent to $phoneNumber");
  }

  Future<bool> verifyCode(String enteredCode) async {
    // Logic to verify the entered code
    // integrate your backend logic here
    if (enteredCode == verificationCode) {
      return true;
    } else {
      return false;
    }
  }
}
