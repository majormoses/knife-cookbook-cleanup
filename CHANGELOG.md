# Change Log
This project adheres to [Semantic Versioning](http://semver.org/).

This CHANGELOG follows the format located [here](https://github.com/sensu-plugins/community/blob/master/HOW_WE_CHANGELOG.md)

## [Unreleased]
### Added
- option `--dry-run` to echo out what it would do (@majormoses)
- option `--versions-to-keep` which allows you keep x versions, this is useful for cleaning up cookbooks but leaving the last few around for easy rollback and such (@majormoses)
- rubocop config (@majormoses)
- travis config (@majormoses)
- updated dependencies (@majormoses)
- license (@majormoses)

### Breaking Changes
- removed ruby `< 2.3.1` support (@majormoses)

## [0.1.1] - 2014-04-08
### Added
- functional version (@agoddard)

[Unreleased]: https://github.com/majormoses/knife-cookbook-cleanup/compare/v0.1.1...HEAD
[0.1.1]: https://github.com/majormoses/knife-cookbook-cleanup/compare/df026a622e4962f0a1d88e93d866bf4daae02b0e...7822c8a3790c25ab2acb56b24507728c19efd7b4