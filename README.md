Veil
====

Veil is the superproject for the stable-state releases of the tools in the [Veil-Framework](https://www.veil-framework.com/).

The Veil-Framework is a red team toolkit focused on evading detection. It currently contains 5 projects including [Veil-Evasion](https://github.com/Veil-Framework/Veil-Evasion) for generating AV-evading payloads, [Veil-Catapult](https://github.com/Veil-Framework/Veil-Catapult) for delivering them to targets, and [PowerTools](https://github.com/PowerShellEmpire/Powertools) (formerly Veil-PowerView) for gaining situational awareness on Windows domains.

For documentation on each project, visit the project repository.

* [Veil-Evasion](https://github.com/Veil-Framework/Veil-Evasion)
* [Veil-Catapult](https://github.com/Veil-Framework/Veil-Catapult)
* [Veil-Pillage](https://github.com/Veil-Framework/Veil-Pillage)
* [Veil-Ordnance](https://github.com/Veil-Framework/Veil-Ordnance)
* [PowerTools](https://github.com/PowerShellEmpire/Powertools) - Formerly Veil-Framework/Veil-PowerView


Installation
------------
To install all projects in the Veil Framework, get and run Install.sh.

```
# git clone https://github.com/Veil-Framework/Veil.git
# cd Veil
# chmod +x Install.sh
# ./Install.sh -c
```

To update all projects and settings appropriately, run `./Install.sh -u`.


People Working On This
----------------------
The Veil-Framework is currently under active support by [@HarmJ0y](https://twitter.com/harmj0y), [@ChrisTruncer](https://twitter.com/ChrisTruncer), and [@TheMightyShiv](https://twitter.com/TheMightyShiv).


Troubleshooting
---------------
During installation ensure no other process holds the apt lock. This can happen if you are running apt-get in another process. If Install.sh cannot grab the apt lock, it will continue but Veil-Evasion will not be installed properly because it relies on numerous dependencies (Wine, etc).
