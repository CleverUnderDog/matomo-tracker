import 'package:flutter/material.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

/// Register a `trackScreenWithName` on this widget.
@optionalTypeArgs
mixin TraceableClientMixin<T extends StatefulWidget> on State<T> {
  /// {@template traceableClientMixin.actionName}
  /// Equivalent to an event action. (e.g. `'Created HomePage'`).
  /// {@endtemplate}
  @protected
  String get actionName => 'Created widget ${widget.toStringShort()}';

  /// {@template traceableClientMixin.eventName}
  /// Equivalent to an event name. (e.g. `'HomePage'`).
  ///
  /// This corresponds with `e_n`.
  /// {@endtemplate}
  @protected
  String get eventName;

  /// {@template traceableClientMixin.pvId}
  /// A 6 character unique ID. If `null`, a random id will be generated.
  /// {@endtemplate}
  @protected
  String? pvId;

  /// {@template traceableClientMixin.path}
  /// Path to the widget. (e.g. `'/home'`).
  ///
  /// This will be combined with [MatomoTracker.contentBase]. The combination
  /// corresponds with `url`.
  /// {@endtemplate}
  @protected
  String? path;

  /// {@template traceableClientMixin.tracker}
  /// Matomo instance used to send events.
  ///
  /// By default it uses the global [MatomoTracker.instance].
  /// {@endtemplate}
  @protected
  MatomoTracker get tracker => MatomoTracker.instance;

  @override
  void initState() {
    super.initState();
    _startTracking();
  }

  void _startTracking() {
    tracker.trackScreenWithName(
      actionName: actionName,
      eventName: eventName,
      pvId: pvId,
      path: path,
    );
  }
}
