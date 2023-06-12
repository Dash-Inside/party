part of '../vk_switch_card.dart';

class VkSwitch extends StatefulWidget {
  final bool state;
  final Function(bool)? onSwitch;

  const VkSwitch({
    required this.state,
    this.onSwitch,
    super.key,
  });

  @override
  State<VkSwitch> createState() => _VkSwitchState();
}

class _VkSwitchState extends State<VkSwitch> with SingleTickerProviderStateMixin {
  static const padding = const EdgeInsets.symmetric(vertical: 6.0);
  static const borderRadius = const BorderRadius.all(Radius.circular(15.5));

  static const width = 50.0;
  static const height = 30.0;

  static const animationDuration = Duration(milliseconds: 400);
  static const switchCircleWidth = 27.0;
  static const switchCircleHeight = 27.0;
  static const switchCirclePadding = EdgeInsets.all(2.0);

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: animationDuration,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(covariant VkSwitch oldWidget) {
    _controller.duration = animationDuration;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget circle() {
      return TweenAnimationBuilder(
        tween: Tween(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        duration: animationDuration,
        builder: (_, alignment, __) {
          return Container(
            alignment: alignment,
            width: switchCircleWidth,
            height: switchCircleHeight,
            margin: switchCirclePadding,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          );
        },
      );
    }

    return Container(
      width: width,
      height: height,
      margin: padding,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Builder(
          builder: (context) {
            final theme = Theme.of(context);

            return widget.state
                ? ColoredBox(
                    color: theme.colorScheme.primary,
                    child: circle(),
                  )
                : ColoredBox(
                    color: theme.highlightColor,
                    child: circle(),
                  );
          },
        ),
      ),
    );
  }
}
