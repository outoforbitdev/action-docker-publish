# [3.0.0](https://github.com/outoforbitdev/action-docker-publish/compare/v2.1.0...v3.0.0) (2024-01-27)


### Features

* support multi-platform builds ([b004e82](https://github.com/outoforbitdev/action-docker-publish/commit/b004e826b718a6ecfe51aa9410973c9096fa2c35))


### BREAKING CHANGES

* Support multi-platform builds. This removes the `build-command` input in favor of separate `dockerfile-path` and `build-args` inputs.

# [2.1.0](https://github.com/outoforbitdev/action-docker-publish/compare/v2.0.0...v2.1.0) (2023-11-24)


### Features

* support custom build commands ([2ade7d2](https://github.com/outoforbitdev/action-docker-publish/commit/2ade7d215d41c1266f87a44a1066fda0f626262c))

# [2.0.0](https://github.com/outoforbitdev/action-docker-publish/compare/v1.1.2...v2.0.0) (2023-11-07)


### Features

* add dry-run flag and support latest tag ([#28](https://github.com/outoforbitdev/action-docker-publish/issues/28)) ([#30](https://github.com/outoforbitdev/action-docker-publish/issues/30)) ([580c8d9](https://github.com/outoforbitdev/action-docker-publish/commit/580c8d9688abf931c2561b0c6bc74ce3f2c3923b))


### BREAKING CHANGES

* convert to composite action 

* add dry run flag

* add latest flag

## [1.1.2](https://github.com/outoforbitdev/action-docker-publish/compare/v1.1.1...v1.1.2) (2023-07-17)


### Bug Fixes

* **deps:** use ubuntu package commands ([9253f2c](https://github.com/outoforbitdev/action-docker-publish/commit/9253f2cd4f654f4fe875ffa91592a346bcb2a7cb))

## [1.1.1](https://github.com/outoforbitdev/action-docker-publish/compare/v1.1.0...v1.1.1) (2023-07-17)


### Bug Fixes

* **deps:** create fix commit for bumping node v1.0.2 ([9c81aba](https://github.com/outoforbitdev/action-docker-publish/commit/9c81aba4aa956088df520f966d5de89b8bd085eb))
