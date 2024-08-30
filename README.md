# Minecraft Server Watchdog Script Generator

This repository contains a script for generating server startup scripts with watchdog functionality based on user configuration. The generated scripts support both Windows (`.bat`) and Linux/Mac (`.sh`) environments.

## Features

- **Java Version Selection**: Automatically detect and list installed Java versions, allowing users to select the version they wish to use.
- **Customizable RAM Allocation**: Users can input the amount of RAM to allocate to the Minecraft server.
- **GUI Option**: Enable or disable GUI mode based on user preference.
- **Auto-Restart Functionality**: Option to automatically restart the server if it crashes, with a customizable 5-second delay.
- **Cross-Platform Support**: Generates startup scripts for both Windows and Linux/Mac environments.
- **Executable for Ease of Use**: Includes a Windows executable for easier script generation.

## How to Use

1. **Run the Executable:**

    - For Windows: Double click the `GenerateScripts.exe` file.
    - Or Run The `.bat` File in Source.

2. **Follow the Prompts:**

    - Select Java version.
    - Specify the path to the server JAR file.
    - Input the amount of RAM to allocate to the server.
    - Set the GUI option.
    - Enable or disable the auto-restart option.

3. **Generated Scripts:**

    - `StartServer.bat` for Windows.
    - `StartServer.sh` for Linux/Mac.

4. **Start the Server:**

    - For Windows: Double click the `StartServer.bat`.
    - For Linux/Mac: Run `./StartServer.sh` in the terminal.

## Verifying Integrity

To ensure the integrity of the `MinecraftStartScriptGenerator.bat` file, you can verify the following hashes:

- **MD5**: [ca1b6b16232b7a480d805ef5c6fe9b08](https://www.toolsley.com/hash.html#v=md5|ca1b6b16232b7a480d805ef5c6fe9b08&f=MinecraftStartScriptGenerator.bat)
- **SHA-1**: [0079ae595e7592377a49dc45c3760de7ce4127ad](https://www.toolsley.com/hash.html#v=sha1|0079ae595e7592377a49dc45c3760de7ce4127ad&f=MinecraftStartScriptGenerator.bat)
- **SHA-256**: [b917392f401c4ace5a55a4e2bb0cb41a37f8b450a185155f51b7f5a156994397](https://www.toolsley.com/hash.html#v=sha256|b917392f401c4ace5a55a4e2bb0cb41a37f8b450a185155f51b7f5a156994397&f=MinecraftStartScriptGenerator.bat)
- **CRC32**: [1fb57124](https://www.toolsley.com/hash.html#v=crc32|1fb57124&f=MinecraftStartScriptGenerator.bat)

## Contributing

Feel free to submit issues, request features, and make pull requests!

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.
