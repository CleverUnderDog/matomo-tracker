# Changelog

## [4.x.x]

* Contributions from [Eric Prokop](https://github.com/EPNW-Eric)
  * feat: Improved documentation and added verification on dimension keys [#63](https://github.com/Floating-Dartists/matomo-tracker/pull/63)
* Contributions from [TesteurManiak](https://github.com/TesteurManiak)
  * fix: Added test cases for dimension key validation [#67](https://github.com/Floating-Dartists/matomo-tracker/pull/67)
  * refactor:
    * Removed `forcedId`
    * Renamed `userId` to `uid`, renamed `TraceableClientMixin.traceName`, `TraceableWidget.traceName` and `trackScreenWithName.widgetName` to `actionName`

## [3.1.0]

* Contributions from [Eric Prokop](https://github.com/EPNW-Eric)
  * feat: Allow to set custom http headers [#59](https://github.com/Floating-Dartists/matomo-tracker/pull/59)
* Contributions from [TesteurManiak](https://github.com/TesteurManiak)
  * fix: Added custom headers to `sendBatch` and added test cases [#60](https://github.com/Floating-Dartists/matomo-tracker/pull/60)

## [3.0.0]

**Check the [Migration Guide](https://github.com/Floating-Dartists/matomo-tracker#v300) section to learn about breaking changes in this version.**

* Contributions from [TesteurManiak](https://github.com/TesteurManiak)
  * Added [cookieless tracking](https://github.com/Floating-Dartists/matomo-tracker#cookieless-tracking)
  * Keep failed event request in queue (offline tracking) [#51](https://github.com/Floating-Dartists/matomo-tracker/issues/51) 
  * You can now make your own `LocalStorage` implementation
  * Added a `verbosityLevel` flag to manage the logged messages

## [2.0.0]

* **Breaking Change**: Removed `name` and `widgetName` arguments from `trackEvent` method
* Contributions from [Chris Tomlinson](https://github.com/luckyrat)
  * fix: Problem with visitor id [#26](https://github.com/Floating-Dartists/matomo-tracker/issues/26)
  * fix: PII in the user agent string can cause tracking failure [#39](https://github.com/Floating-Dartists/matomo-tracker/issues/39)
* Contribution from [Johann Schramm](https://github.com/JohannSchramm)
  * fix: queue in matomo.dart breaks tracking [#33](https://github.com/Floating-Dartists/matomo-tracker/issues/33)
* Contribution from [Scolnet](https://github.com/scolnet)
  * Add pause and resume capabilities
* Contribution from [Pierre Monier](https://github.com/Pierre-Monier)
  * Added tests and code coverage
* Bumped `device_info_plus` to `8.0.0`
* Bumped `package_info_plus` to `3.0.2`
* Bumped `uuid` to `3.0.7`

## [1.7.0]

* Bumped `device_info_plus` to `7.0.1`
* Bumped `package_info_plus` to `3.0.1`

## [1.6.0]

* Bumped Dart SDK version to `2.17.0`
* Removed [logging](https://pub.dev/packages/logging) dependency
* Removed [universal_platform](https://pub.dev/packages/universal_platform) dependency

## [1.5.0]

* Contribution from [Paula Petcu](https://github.com/Floating-Dartists/matomo-tracker/pull/21)
* Addition of a `TraceableWidget` to track `StatelessWidget`.

## [1.4.1]

* Fix [#18](https://github.com/Floating-Dartists/matomo-tracker/issues/18)

## [1.4.0]

* Fix [#16](https://github.com/Floating-Dartists/matomo-tracker/issues/16) (Contribution from [Paula Petcu](https://github.com/petcupaula))
* Updated dependency [device_info_plus](https://pub.dev/packages/device_info_plus) to version [4.1.2](https://pub.dev/packages/device_info_plus/versions/4.1.2)
* Updated dependency [http](https://pub.dev/packages/http) to version [0.13.5](https://pub.dev/packages/http/versions/0.13.5)

## [1.3.0]

* Contribution from [lsaudon](https://github.com/lsaudon)
  * Updated dependency [device_info_plus](https://pub.dev/packages/device_info_plus) to [4.0.1](https://pub.dev/packages/device_info_plus/versions/4.0.1)
  * Updated dependency `package_info_plus` to `1.4.3`
  * Fixed analysis warnings

## [1.2.1]

* Added support for Visitor's userId
  * Solves [#13](https://github.com/Floating-Dartists/matomo-tracker/issues/13) by allowing a userId coming from a third-party source (eg. Firebase) to be linked to the visitor.
  * Is accessible through the setVisitorUserId() method of the MatomoTracker instance.
  * No breaking changes.

## [1.2.0]

* Fix [#9](https://github.com/Floating-Dartists/matomo-tracker/issues/9) (Contribution from [Marvin Möltgen](https://github.com/M123-dev))
  * Deprecated `MatomoTracker.trackEvent.name` use `MatomoTracker.trackEvent.eventName` instead
  * Deprecated `MatomoTracker.trackEvent.widgetName` use `MatomoTracker.trackEvent.eventCategory` instead

## [1.1.2]

* Contributions from [Marvin Möltgen](https://github.com/M123-dev)
  * fix [#8](https://github.com/Floating-Dartists/matomo-tracker/issues/8): Send country code only in combination with auth_token

## [1.1.1]

* Contributions from [Marvin Möltgen](https://github.com/M123-dev)
  * fix: Now exporting the `Visitor` class [#6](https://github.com/Floating-Dartists/matomo-tracker/pull/6)

## [1.1.0]

* Contributions from [Marvin Möltgen](https://github.com/M123-dev)
    * feat: Allow to see the opt out status [#5](https://github.com/Floating-Dartists/matomo-tracker/pull/5)
    * feat: Allow tracking of outlinks [#4](https://github.com/Floating-Dartists/matomo-tracker/pull/4)
    * feat: Send country code [#2](https://github.com/Floating-Dartists/matomo-tracker/pull/2)
    * feat: Allow search tracking [#3](https://github.com/Floating-Dartists/matomo-tracker/pull/3)

## [1.0.3+1]

* Updated README with new logo and link to Matomo Integrations page

## [1.0.3]

* Added `path` property to `TraceableClientMixin`
* Improved documentation

## [1.0.2]

* Fixed default `TraceableClientMixin.widgetId`, now `null` and you will have to set it manually with a length of 6 characters
* Migrated example app to null-safety

## [1.0.1+2]

* Fixed README.md typo
* Improved documentation

## [1.0.1+1]

* Updated README with pub version & Matomo Tracking documentation link

## [1.0.1]

* Fixed `visitorId` not being set for future visits

## [1.0.0]

* Initial release of matomo-tracker
