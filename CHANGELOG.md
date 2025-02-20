# Changelog for `scbwrp`

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to the
[Haskell Package Versioning Policy](https://pvp.haskell.org/).

## Unreleased

## 0.1.0.0 - YYYY-MM-DD

### Added

- `bytesToHex`: converts ByteString to Hex 
- `main` takes file from argument and reads into bytes; afterwards the first 34 hexdecimals are printed, zlib magic number identified and rest of header is decompressed before being printed as well.
- Added a couple of my replays under `data/replays` to test parser.
