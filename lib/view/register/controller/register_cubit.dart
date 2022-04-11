import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  static RegisterCubit get(context) => BlocProvider.of(context);
//===============================================================
  bool isPassword = true;
  bool isChecked = false;
  IconData suffix = FontAwesomeIcons.eye;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  FocusNode emailNode = FocusNode(), passwordNode = FocusNode();
  TextEditingController nameController = TextEditingController(),
      emailController = TextEditingController(),
      passwordController = TextEditingController();

//===============================================================
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(RegisterChangePasswordVisibilityState());
  }

//===============================================================
  Future<void> userSignUp({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoadingState());
    try {} on DioError catch (e) {
      emit(RegisterLErrorState(error: e.toString()));
    } catch (e) {
      debugPrint(e.toString());
      emit(RegisterLErrorState(error: e.toString()));
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    return super.close();
  }
}
