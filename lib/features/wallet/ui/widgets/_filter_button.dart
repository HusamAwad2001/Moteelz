part of '../wallet_screen.dart';

class _FilterButton extends StatelessWidget {
  const _FilterButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WalletCubit, WalletState>(
      builder: (context, state) {
        if (state.isSuccess && (state.wallets?.isNotEmpty ?? false)) {
          return GestureDetector(
            onTap: () => AppDialog.show(
              context,
              padding: EdgeInsets.zero,
              content: BlocProvider.value(
                value: getIt<WalletCubit>(),
                child: const WalletFilterWidget(),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 25.w),
              decoration: BoxDecoration(
                color: ColorsManager.primary,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: ColorsManager.whiteE3),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 35.5,
                    color: ColorsManager.black.withValues(alpha: 0.41),
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppImage(path: AppIcons.sort, width: 18.w),
                  horizontalSpace(4),
                  Text(
                    context.tr(LocaleKeys.filter),
                    style: TextStyles.font16WhiteSemiBold,
                  ),
                ],
              ),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
