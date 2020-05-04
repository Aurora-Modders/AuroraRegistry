# Purpose

This repository is a mirror for Aurora mods and content accessible via the [Aurora Loader](https://github.com/Aurora-Modders/AuroraLoader). We're trying to make it easy to author and share stuff for Aurora while staying faithful to the developer's wishes. 

## Adding a mod to the registry

1. Add a `mod.json` file to your repository, or host it somewhere else/here. Structure it like the [example here](https://github.com/Aurora-Modders/AuroraRegistry/blob/master/Mods/example_mod.json).

2. Create a pull request against this repository adding the URL of that JSON file to [mod_locations.json](https://github.com/Aurora-Modders/AuroraRegistry/blob/master/mod_locations.json). We'll take a look and merge it in as fast as we can. 

3. Add new entries to `downloads` in your `mod.json` as you release new versions of your mod.

## Contents

- [mods.json](https://github.com/Aurora-Modders/AuroraRegistry/blob/master/mods.json): File used to discover mods by currently released versions of AuroraLoader. Will be deprecated shortly in favor of `mod_locations.json`.
- [mod_locations.json](https://github.com/Aurora-Modders/AuroraRegistry/blob/master/mod_locations.json): Simple JSON list of URLs pointing to JSON files hosted anywhere. New mods are added to the registry here.
- [Mods](https://github.com/Aurora-Modders/AuroraRegistry/tree/master/Mods): Contains an example `mod.json` file, as well as several mod JSON files hosted directly by the registry.
- [aurora_files.ini](https://github.com/Aurora-Modders/AuroraRegistry/blob/master/aurora_files.ini) and [aurora_versions.ini](https://github.com/Aurora-Modders/AuroraRegistry/blob/master/aurora_versions.ini): Files used by the loader to identify and discover new versions of Aurora
- C# project files: This repository also contains a simple program for testing the checksum of an .exe that you can run from Visual Studio.
