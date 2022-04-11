import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_task/core/router/router.dart';
import 'package:social_task/view/home/home_view.dart';
import '../../widgets/loading_widget.dart';
import '../../widgets/main_button.dart';
import 'component/custom_back_button.dart';
import 'component/privacy_text.dart';
import 'component/register_heading.dart';
import 'controller/register_cubit.dart';
import 'controller/register_state.dart';
import 'widgets/email_text_field.dart';
import 'widgets/name_text_field.dart';
import 'widgets/password_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterSuccessState) {}
          },
          builder: (context, state) {
            final cubit = RegisterCubit.get(context);
            return Form(
              key: cubit.formKey,
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  const CustomBackButton(),
                  const RegisterHeading(),
                  const SizedBox(height: 24.0),
                  NameTextField(
                    hintText: "Full name",
                    controller: cubit.nameController,
                    onFieldSubmitted: (value) {
                      cubit.emailNode.requestFocus();
                    },
                  ),
                  const SizedBox(height: 18.0),
                  EmailTextField(
                    hintText: "E-mail",
                    controller: cubit.emailController,
                    focusNode: cubit.emailNode,
                    onFieldSubmitted: (value) {
                      cubit.passwordNode.requestFocus();
                    },
                  ),
                  const SizedBox(height: 18.0),
                  PasswordTextField(
                      hintText: "Password",
                      controller: cubit.passwordController,
                      focusNode: cubit.passwordNode,
                      onFieldSubmitted: (value) {
                        if (cubit.formKey.currentState!.validate()) {
                          MagicRouter.navigateTo(const HomeView());
                        }
                      },
                      obscureText: cubit.isPassword,
                      onPressed: () => cubit.changePasswordVisibility(),
                      icon: cubit.suffix),
                  const SizedBox(height: 18.0),
                  state is RegisterLoadingState
                      ? const LoadingWidget()
                      : MainButton(
                          text: "Sign up",
                          onPressed: () {
                            if (cubit.formKey.currentState!.validate()) {
                              MagicRouter.navigateTo(const HomeView());
                            }
                          },
                        ),
                  const PrivacyText(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
