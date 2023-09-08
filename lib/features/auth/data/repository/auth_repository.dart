import 'package:chef_app/core/error/exceptions.dart';
import 'package:chef_app/features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/database/api/api_consumer.dart';
import '../../../../core/database/api/end_point.dart';
import '../../../../core/services/services_locator.dart';

class AuthRepository {
  Future<Either<String, LoginModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await sl<ApiConsumer>().post(EndPoint.chefSignIn, data: {
        ApiKeys.email: email,
        ApiKeys.password: password,
      });
    return  Right(LoginModel.fromJson(response));
    } on ServerException catch (error) {
    return Left(error.errorModel.errorMessage);
    }
  }
Future<Either<String, String>> sendCode(String email)async{
  try{
  final response=  await sl<ApiConsumer>().post(EndPoint.sendCode,data: {
ApiKeys.email:email,
    },);
    return  Right(response[ApiKeys.message]);
    } on ServerException catch (error) {
    return Left(error.errorModel.errorMessage);
    }
  }
}

