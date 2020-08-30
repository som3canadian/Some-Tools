# Some-Tools

## Why

I was looking for a way to manage and **keep up to date** some tools that are not include in Kali-Linux. For exemple, I was looking for an easy way to manage privilege escalation scripts. One day I saw sec-tools from eugenekolo (which you can see at the bottom of the page) and it gave me the motivation to start working on mine right away.

But keep in mind that is different. I built this for people that are working with Kali. Should work on others distro but I didn't include tool like Burp Suite or SQLmap because it comes in Kali by default.

## Installation

```bash
$ git clone https://github.com/som3canadian/Some-Tools
$ cd Some-Tools
$ ./sometools.sh setup
# after setup, open new terminal or tab
$ ./sometools.sh list
# you can look in your .zshrc or .bashrc if you are not sure that the installation worked.
# For more info see Actions Detailed section.
```

### Familiar with Vagrant ?

See how to install Some-Tools with a brand new Kali 2020.x VM with only **5 commands** in the [Vagrantfile section](#Vagrantfile).

## Actions Summary

- `setup` - Set up the environment (Create bin dir and set bin dir to your $PATH)
- `help` - Show this menu
- `info` - Show README.md of an installed tool
- `list` - List all tools (Installed tools will appear in a different color)
- `list-cat` - List all tools of a Category (Installed tools will appear in a different color)
- `list-installed` - List all installed tools
- `install` - Install a tool
- `install-cat` - Install all tools of a Category
- `install-all` - Install all tools
- `check-update` - Check Update for an installed tools and Update it if you want (Only for tools from a git repo)
- `check-update-all` - Check Update for all installed tools
- `self-update` - Check Update for Some-Tools and Update if you want
- `add-tool` - Create template for a new tool (./sometools.sh add-tool newtoolname category)
- `uninstall` - Uninstall a tool (Trying uninstall with the tool built-in uninstall.sh before Cleaning from our project)
- `uninstall-cat` - Uninstall all tools of a Category
- `complete-uninstall` - Delete all installed tools, remove bin directory and delete our modification in .zshrc or .bashrc

**note**: No need to precise the category name when using a tool. Just use tool name.

## Basic usage

```bash
# Inital setup. Should be the first command
$ ./sometools.sh setup
# List all available tools
$ ./sometools.sh list
# List all available tools of a category
$ ./sometools.sh list-cat
# List install tool(s)
$ ./sometools.sh list-installed
# Install a tool
$ ./sometools.sh install unicorn
# Using ID instead of tool name
$ ./sometools.sh install 4
# Install all tools of a Category
$ ./sometools.sh install-cat PrivEsc-Win
# Install All tools
$ ./sometools.sh install all
# Show README.md of an installed tool
$ ./sometools.sh info unicorn
# Using ID instead of tool name
$ ./sometools.sh info 4
# Check for update
$ ./sometools.sh check-update PEAS
# Using ID instead of tool name
$ ./sometools.sh check-update 9
# Check update for all installed tools
$ ./sometools.sh check-update all
# Add a new tool
$ ./sometools.sh add-tool newtoolname PrivEsc-Lin
# Uninstall a tool
$ ./sometools.sh uninstall unicorn
# Using ID instead of tool name
$ ./sometools.sh uninstall 4
# Unistall all tools of a Category
$ ./sometools.sh uninstall-cat PrivEsc-Win
# Update some-tools
$ ./sometools.sh self-update
# Delete all installed tools, remove bin directory and delete our modification in .zshrc or .bashrc
$ ./sometools.sh complete-uninstall
```

## The Bin directory

- The bin directory will be create when doing the setup action. This will be the dir path that we will add to our shell $PATH (../../../Some-Tools/bin). In the bin dir we will put copy(symlink) of tool(s) that we want executable everywhere on our machine.For example a tool like `unicorn.py`, you may want to execute `unicorn` from everywhere you want.

- The setup action will aslo create `bin/PrivEsc-Lin` and `bin/PrivEsc-Win` in the process. In this directories we will keep our privilege escalation scripts. So, when you want to use your tools, you can fire a python http server and quickly upload the scripts you desire. The scripts in those folders **will be update at the same time you update the tool(s)** with check-update action.

## Tools List

### Summary

```bash
$ ./sometools.sh list

# In order, columns are: ID, category name and tool name
[1] Evasion/Bashfuscator
[2] Evasion/PyFuscation
[3] Evasion/tvasion
[4] Evasion/unicorn
[5] Exploit-Win/windows-kernel-exploits
[6] PrivEsc-Lin/BeRoot
[7] PrivEsc-Lin/LinEnum
[8] PrivEsc-Lin/LinPwn
[9] PrivEsc-Lin/PEAS
[10] PrivEsc-Lin/SUID3NUM
[11] PrivEsc-Lin/SetUID
[12] PrivEsc-Lin/linux-enum-mod
[13] PrivEsc-Lin/linux-exploit-suggester
[14] PrivEsc-Lin/linux-exploit-suggester-2
[15] PrivEsc-Lin/linuxprivchecker
[16] PrivEsc-Lin/lse
[17] PrivEsc-Lin/pspy
[18] PrivEsc-Lin/setuid-wrapper
[19] PrivEsc-Lin/unix-privesc-check
[20] PrivEsc-Win/JAWS
[21] PrivEsc-Win/Powerless
[22] PrivEsc-Win/Privesc
[23] PrivEsc-Win/SessionGopher
[24] PrivEsc-Win/Sherlock
[25] PrivEsc-Win/WinPwn
[26] PrivEsc-Win/Windows-Exploit-Suggester
[27] PrivEsc-Win/Windows-Privilege-Escalation
[28] PrivEsc-Win/mimikatz
[29] PrivEsc-Win/windows-privesc-check
[30] Utilities/SirepRAT
[31] Utilities/Windows-Tools
[32] Utilities/cryptz
[33] Utilities/decodify
[34] Utilities/evil-winrm
[35] Utilities/impacket
[36] Utilities/nishang
[37] Utilities/nmapAutomator
[38] Utilities/revshellgen
[39] Web/dirsearch
[40] Web/kadimus
[41] Web/windows-php-reverse-shell
[42] Web/wwwolf-php-webshell
[43] Wordpress/malicious-wordpress-plugin
[44] Wordpress/wordpress-exploit-framework
```

### Detailed

| Category      | Tool                         | Source                                                                      |
|:--------------|:---------------------------- |:----------------------------------------------------------------------------|
| Evasion       | Bashfuscator                 | <https://github.com/Bashfuscator/Bashfuscator>                              |
| Evasion       | PyFuscation                  | <https://github.com/CBHue/PyFuscation>                                      |
| Evasion       | tvasion                      | <https://github.com/loadenmb/tvasion>                                       |
| Evasion       | unicorn                      | <https://github.com/trustedsec/unicorn>                                     |
| Exploit-Win   | windows-kernel-exploits      | <https://github.com/SecWiki/windows-kernel-exploits>                        |
| PrivEsc-Lin   | BeRoot                       | <https://github.com/AlessandroZ/BeRoot>                                     |
| PrivEsc-Lin   | LinEnum                      | <https://github.com/rebootuser/LinEnum>                                     |
| PrivEsc-Lin   | LinPwn                       | <https://github.com/3XPL017/LinPwn>                                         |
| PrivEsc-Lin   | PEAS                         | <https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite> |
| PrivEsc-Lin   | SUID3NUM                     | <https://github.com/Anon-Exploiter/SUID3NUM>                                |
| PrivEsc-Lin   | SetUID                       | <https://github.com/AlessandraZullo/SetUID.git>                             |
| PrivEsc-Lin   | linux-enum-mod               | <https://github.com/kevthehermit/pentest>                                   |
| PrivEsc-Lin   | linux-exploit-suggester      | <https://github.com/mzet-/linux-exploit-suggester>                          |
| PrivEsc-Lin   | linux-exploit-suggester-2    | <https://github.com/jondonas/linux-exploit-suggester-2>                     |
| PrivEsc-Lin   | linuxprivchecker             | <https://github.com/sleventyeleven/linuxprivchecker.git>                    |
| PrivEsc-Lin   | lse                          | <https://github.com/diego-treitos/linux-smart-enumeration>                  |
| PrivEsc-Lin   | pspy                         | <https://github.com/DominicBreuker/pspy>                                    |
| PrivEsc-Lin   | setuid-wrapper               | <https://github.com/jfredrickson/setuid-wrapper>                            |
| PrivEsc-Lin   | unix-privesc-check           | <https://github.com/pentestmonkey/unix-privesc-check>                       |
| PrivEsc-Win   | JAWS                         | <https://github.com/411Hall/JAWS>                                           |
| PrivEsc-Win   | Powerless                    | <https://github.com/M4ximuss/Powerless>                                     |
| PrivEsc-Win   | Privesc                      | <https://github.com/enjoiz/Privesc>                                         |
| PrivEsc-Win   | SessionGopher                | <https://github.com/Arvanaghi/SessionGopher>                                |
| PrivEsc-Win   | Sherlock                     | <https://github.com/rasta-mouse/Sherlock>                                   |
| PrivEsc-Win   | WinPwn                       | <https://github.com/S3cur3Th1sSh1t/WinPwn>                                  |
| PrivEsc-Win   | Windows-Privilege-Escalation | <https://github.com/frizb/Windows-Privilege-Escalation>                     |
| PrivEsc-Win   | Windows-Exploit-Suggester    | <https://github.com/AonCyberLabs/Windows-Exploit-Suggester>                 |
| PrivEsc-Win   | mimikatz                     | <https://github.com/gentilkiwi/mimikatz>                                    |
| PrivEsc-Win   | windows-privesc-check        | <https://github.com/pentestmonkey/windows-privesc-check>                    |
| Utilities     | SirepRAT                     | <https://github.com/SafeBreach-Labs/SirepRAT.git>                           |
| Utilities     | Windows-Tools                | <https://github.com/som3canadian/Windows-Tools.git>                         |
| Utilities     | cryptz                       | <https://github.com/iinc0gnit0/cryptz>                                      |
| Utilities     | decodify                     | <https://github.com/s0md3v/Decodify>                                        |
| Utilities     | evil-winrm                   | <https://github.com/Hackplayers/evil-winrm>                                 |
| Utilities     | impacket                     | <https://github.com/SecureAuthCorp/impacket>                                |
| Utilities     | nishang                      | <https://github.com/samratashok/nishang>                                    |
| Utilities     | nmapAutomator                | <https://github.com/21y4d/nmapAutomator>                                    |
| Utilities     | revshellgen                  | <https://github.com/t0thkr1s/revshellgen>                                   |
| Web           | dirsearch                    | <https://github.com/maurosoria/dirsearch>                                   |
| Web           | Kadimus                      | <https://github.com/P0cL4bs/kadimus>                                        |
| Web           | windows-php-reverse-shell    | <https://github.com/Dhayalanb/windows-php-reverse-shell.git>                |
| Web           | wwwolf-php-webshell          | <https://github.com/WhiteWinterWolf/wwwolf-php-webshell>                    |
| Wordpress     | malicious-wordpress-plugin   | <https://github.com/wetw0rk/malicious-wordpress-plugin.git>                 |
| Wordpress     | wordpress-exploit-framework  | <https://github.com/rastating/wordpress-exploit-framework>                  |

Note:

- PEAS include both linPEAS and winPEAS scripts
- BeRoot include both Linux and Windows scripts

## Actions Detailed

- **setup** (Setup Process):
  - **Should be the first command you run.**
  - First it will ask if you use `.bashrc` or `.zshrc` (built in setup action will not work if you are not using one of the two shell)
  - After that we will setup $SOME_ROOT variable et create a new $PATH
  - After the setup, You can open new terminal tabs/windows or source your shell (.bashrc or .zshrc) in the current terminal to activate the new path. To see you new path after you can do `echo $PATH`
  - In you shell file (.bashrc or .zshrc), we will copy you $PATH before we make modification. It will be commented few lines before the end of your shell file. So if you want to reset your path to before Some-Tools setup you can copy the command commented in you shell file, cleanup what we created in the file and finally source it.
  - Creation of Bin directory. (bin, bin/PrivEsc-Lin and bin/PrivEsc-Win)
  - You can read the setup section in `sometools.sh` to have a better understanding.

  ```bash
  $ ./sometools.sh setup
  ```

- **install** and **install-all**:
  - Install one tool or all tools.
  - If you install only one tool, instead of using tool name, you can use is ID number showed when you do `./sometools.sh list`.
  - When you will install a tool, it will create a `.installed` file in the tool dir. This file will help us with our list-installed action.

  ```bash
  $ ./sometools.sh list # see which tool can be install
  # install a tool
  $ ./sometools.sh install LinEnum
  # example using an ID number
  $ ./sometools.sh install 7
  # installing all tools
  $ ./sometools.sh install-all
  ```

- **install-cat** and **uninstall-cat**:
  - Install all tools of a category.
  - Uninstall all tools of a category.

  ```bash
  # install cat
  $ ./sometools.sh install-cat PrivEsc-Win
  # uninstall cat
  $ ./sometools.sh uninstall-cat PrivEsc-Win
  ```

- **check-update** and **check-update-all**:
  - Check update for an installed tool or all installed tools
  - check-update won't update if your tool is not a git repo. So you must manually update tool(s) that didn't contain `.git` directory.
  - If you check-update only one tool, instead of using tool name, you can use is ID number showed when you do `./sometools.sh list`.

  ```bash
  $ ./sometools.sh list-installed # list currently installed tool(s)
  $ ./sometools.sh check-update LinEnum
  # example using an ID number
  $ ./sometools.sh check-update 7
  # example with check-update-all
  $ ./sometools.sh check-update-all
  ```

  - Why two check-git ? check-git.sh only tell if the tool is behind or not. If we detect a newer version, we will ask to execute check-git-action.sh.

- **self-update**:
  - That function help keeping this tool (Some-Tools) up to date. If you are behind it will ask you if you want to `pull`.

  ```bash
  $ ./sometools.sh self-upadte
  ```

- **uninstall**:
  - Uninstall an installed tool. No function uninstall-all, I guess at this point you can delete the repo.
  - Instead of using tool name, you can use is ID number showed when you do `./sometools.sh list`.

  ```bash
  $ ./sometools.sh uninstall unicorn
  # example using an ID number
  $ ./sometools.sh uninstall 4
  ```

- **add-tool**:
  - add-tool will create your new directory in the category you have specified. It will also create 3 files in this directory: `install-tool.sh`, `uninstall-tool.sh` and `.gitignore`.
  - Looking other tools will help you understand how add yours. It's quite easy. Its 3 files, which `add-tool` action will create for you.
  - When adding a tool I strongly suggest naming the tool the same of their repo. It will be more easy to use check-update action after. But if you want a different name, you can see an example with `lse` tool in `PrivEsc-Lin` directory. You may have to change the `.gitignore` file in your tool directory.
  - If your tool is not a git repo, there is no worry. But you will have to modify `install-tool.sh` file to fit your needs. If you do so, the check-update action will not work "out of the box" (because we won't find any .git directory). Solution: you can create a file **name** `update-tool.sh` (in the tool directory) and put your update commands in it. The `some-tools.sh` script will detect this file name when using check-update action. Don't forget to `chmod +x` your new file.
  - `.gitignore` will contain your tool name and `.installed`. Why ? Because we dont want to push git repo into another repo and we dont want to push `.installed` file.

  ```bash
  $ ./sometools.sh add-tool newtoolname PrivEsc-Lin
  # better example ?
  $ ./sometools.sh add-tool LinEnum PrivEsc-Lin
  ```

- **install-tool and update-tool using scrapy**
  
  Sometimes tool need to be download via the releases/latest page like pspy from DominicBreuker. So to be able to always update and download the latest version, the process needed a little twist with python and scrapy. If you add a new tool using this pattern, you can use the function bellow in your install-tool.sh and update-tool.sh files.

  ```bash
  # example with pspy
  # this is not a full script, only a function. Sould be part of an install or/and update script.
  # function that use some-scrapper.py
  function specialTool() {
    urlGit="https://github.com"
    ## You should modify urlTool variable (Should be the only modification)
    urlTool="DominicBreuker/pspy/releases/latest"

    # scrapy command
    scrapy runspider $SOME_ROOT/some-scrapper.py -a start_url="$urlGit/$urlTool" -o output.csv >/dev/null 2>&1
    # Preparing txt file before downloading
    mv output.csv output.txt
    sort output.txt | uniq -d | tee output2.txt >/dev/null 2>&1
    rm output.txt
    sed -i -e 's#^#'"$urlGit"'#' output2.txt

    # Downloading each line with wget
    while IFS= read -r line; do
      wget $(echo "$line" | tr -d '\r') #> /dev/null 2>&1
    done <output2.txt

    # Cleaning up
    rm output2.txt
    rm output2.txt-e
  }

  specialTool
  ```

- **info**:
  - Show the README.md file of an installed tool.
  - Instead of using tool name, you can use is ID number showed when you do `./sometools.sh list`.
  - [Bat](https://github.com/sharkdp/bat) or cat ?
  - I love using bat instead of cat, so when `info` action is used, some-tools will try to detect the `bat` binary. If it does it will ask you between `bat` or `cat`.
  - If you don't know what I'm takling about, don't worry `cat` will be use by default without asking if no `bat` detected.

  ```bash
  $ ./sometools.sh info LinEnum
  # example using an ID number
  $ ./sometools.sh info 7
  ```

- **complete-uninstall**:
  - Delete all installed tools, remove bin directory and delete our modification in .zshrc or .bashrc
  - We will delete only some-tools section in your .zshrc or .bashrc file. So if you made some modifications along the way, they will be kept.
  - Af the complete uninstall, you shoudl have 3 .zshrc or .bashrc file. One finishing with .backup that we created at the initial setup and the second one, .backup2, before deleting sometools section in the complete-uninstall process.

  ```bash
  $ ./sometools.sh complete-uninstall
  ```

## Vagrantfile

Install Some-Tools within a brand new Kali 2020.x VM using [Vagrant](https://www.vagrantup.com). This repo include a Vagrantfile of Kali-Linux 2020.x release, but you can see the original vagrant box here <https://app.vagrantup.com/nicmilot/boxes/kali-full-2020>. Providers for this box are: VMWare Fusion and Virtualbox.

I'm using VMware Fusion, so this Vagrantfile will be configure that way. You can modify vagrant box information to fit your need. If you are using Virtualbox, just swith the comments in the Vagrantfile.

How to use it ? (Complete install with brand new Kali VM in 5 commands):

```bash
# Download Vagrantfile from this repo
$ wget https://raw.githubusercontent.com/som3canadian/Some-Tools/master/Vagrantfile
# start the kali box
$ vagrant up
# connect ssh to the kali box
$ vagrant ssh
# cd into some-tools
$ cd Desktop/Some-Tools
# setup some-tools
$ ./sometools.sh setup
# Verify the installation by:
# 1. open new terminal tab or window
# 2. cd ~/Desktop/Some-Tools
# 3. ./sometools.sh list
```

## Others

- When using the ID number instead of tool name, be sure to use the ID number from `./sometools.sh list` and not `./sometools.sh list-installed`
- If you add a new tool that need specific update instructions, you can create the file `update-tool.sh` in the tool dir (like the install-tool.sh and uninstall-tool.sh file). When you will check-update, the some-tools.sh script will take it in consideration.
- You **can't** use the same name for two tools. It will cause problems. When using add-tool action, we will check for that. A solution for that would be to precise category name when using an action but I **really don't want that**. Since using a different name is easy, I have no intention for the moment to develop a solution that will let us use the same name for multiple tools.
- Some of the tool you will install may ask you for `sudo` permissions !
- The `check-git.sh` file include in the repo is for the check-update and check-update-all actions.
- I'm building this on my free time, may have some bugs. If stars start to grow, I may put more time and effort.

## License

The individual tools are all licensed under their own licenses.

⭐ If you find it useful, star it at the top of this page ⭐ Thank You 🔥😎

## Acknowledgements

Built from the idea of <https://github.com/eugenekolo/sec-tools> and <https://github.com/zardus/ctf-tools>.
