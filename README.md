# Germish

Germish is a US keyboard layout which supports creating German Umlaute (äöü)
using the alt key, e.g. <kbd>alt-a</kbd> types <kbd>ä</kbd>.
It comes with a nice transparent G icon for the menu bar that also adapts to dark mode.
The layout was made using [Ukelele](https://software.sil.org/ukelele/).

Germish ist ein Tastaurlayout für die US-Tastatur mit dem man deutsche Umlaute
mittels alt-Taste erzeugen kann, z.B. <kbd>alt-a</kbd> tippt <kbd>ä</kbd>.
Es kommt zusammen mit einem eleganten G Symbol für die Menüleiste, 
das sich auch an das dunkle Erscheinungsbild anpasst.
Das Layout wurde mit [Ukelele](https://software.sil.org/ukelele/) gemacht.


Changes to the original US keyboard / Änderungen zum original US Keyboard:

| Keystroke   | Result | Note                   |
|-------------|--------|------------------------|
| alt-a       | ä      |                        |
| alt-o       | ö      |                        |
| alt-u       | ü      |                        |
| alt-s       | ß      | no change, sharp-s     |
| alt-shift-a | Ä      |                        |
| alt-shift-o | Ö      |                        |
| alt-shift-u | Ü      |                        |
| alt-shift-s | ẞ      | upper-case ß           |
| alt-2       | €      |                        |
| alt-shift-2 | ½      |                        |
| alt-shift-3 | ⅓      |                        |
| alt-shift-4 | ¼      |                        |
| alt-y       | ¨      | dead-key for diaeresis |
| alt-shift-y | ¥      |                        |
| alt-shift-h | ™      |                        |
| alt-shift-l | ‹      |                        |
| alt-shift-; | ›      |                        |

## Installation

1. Clone the repo or download as zip. 
2. Copy `Germish.bundle` (which should appear as a file in macOS Finder) to either 
   * `~/Library/Keyboard Layouts` (current user only) or 
   * `/Library/Keyboard Layouts` (all users)
3. Reboot if installed for all users
4. Go to System Settings / Keyboard / Input Sources, click `+`, click English, select and add Germish
5. Change layout to Germish using ctrl-space

## FAQ

### Why Germish?
Germish = Ger<s>man</s> + <s>Engl</s>ish.

### Why do I see a bar or a keyboard icon instead of the G icon?
If you see just a bar or an ugly keyboard icon, try to reboot first, 
then try to add and remove another layout. It sometimes bugs out.

### Why is the icon square?
Because it looks best like this. The system icons are generated on the fly and are bigger (44px width) 
than normal icons. When composing a rectangular icons, it always looks smaller than the system icons.
So the best way to deal with it is to use a square icon that fits nicely into the menu bar.

### How did you get the icon to change colors depending on dark mode on/off?
The trick is to set `TISIconIsTemplate = true` in [Info.plist](Germish.bundle/Contents/Info.plist),
which tells macOS that the icon should be treated as a template as opposed to a fixed icon.

### How did you create the icon?
First, I created the svg using [Inkscape](https://inkscape.org) and exported it as a PNG size 64x64 and alpha.
The script [MakeIcon.sh](MakeIcon.sh) is then used to convert the PNG into an ICNS file. 
The required tools come pre-installed on macOS.