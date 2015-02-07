# OS&thinsp;X Homebrew Update Notifier

A little script to announce outdated [Homebrew](http://brew.sh/) formulas in the OS&thinsp;X Notification Center.

## Installation

**Prerequisites**:

- [Homebrew](http://brew.sh/), of course.
- [terminal-notifier](https://github.com/alloy/terminal-notifier) is for sending the results of the script to the Notification Center.
Install with `brew install terminal-notifier`.

Download the script and place it in your environment path (how about `/usr/local/bin`?) and give it executable rights: `chmod +x /usr/local/bin/homebrew-update-notifier`.

## Usage/Automation

This script doesn’t make much sense without some automation. The easiest way is to fire it from a [launchd](http://alvinalexander.com/mac-os-x/mac-osx-startup-crontab-launchd-jobs) entry.

1. Copy the example launch agent file into your user library: `cp opt/homebrew.update-notifier.plist ~/Library/LaunchAgents/homebrew.update-notifier.plist`
2. Modify the starting times and and other settings to your flavour
3. Start with `launchctl load ~/Library/LaunchAgents/homebrew.update-notifier.plist`. (You can halt the process by using _unload_ as launchctl command).

## Credits

Based on the similar scripts from [Chris Streeter](http://chrisstreeter.com) and [Simon Schick](http://www.simonsimcity.net).

## License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

In jurisdictions that recognize copyright laws, the author or authors of this software dedicate any and all copyright interest in the software to the public domain. We make this dedication for the benefit of the public at large and to the detriment of our heirs and successors. We intend this dedication to be an overt act of relinquishment in perpetuity of all present and future rights to this software under copyright law.


**The software is provided "as is", without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and noninfringement. 
In no event shall the authors be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.**

For more information, please refer to [http://unlicense.org/](http://unlicense.org/)
