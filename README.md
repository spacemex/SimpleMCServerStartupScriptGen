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

1. **Run the Script:**

    - For Windows: Double click the `GenerateScripts.exe` file.
    - For Linux/Mac: Run `chmod +x GenerateScripts.sh` followed by `./GenerateScripts.sh` in the terminal.

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

## Contributing

Feel free to submit issues, request features, and make pull requests!

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.
