# Set Up Mutt and Offlineimap to Read Gmail

## Package Dependencies

All packages are installed with [nix package manager](https://nixos.org/nix/):

Search for a package (using `mutt` as example)

	nix-env -qa | grep mutt
	
Install a package

	nix-env -i mutt

Uninstall a package

	nix-env --uninstall mutt

List of all installed packages

	nix-env -q
	
- [lynx-2.8.8rel.2](http://lynx.browser.org)
- [mutt-1.7.1](http://www.mutt.org)
- [offlineimap-7.0.9](http://www.offlineimap.org)

## Configuration

- .muttrc, Mutt configuration
- .offlineimaprc, Offlineimap configuration
- crontab.txt, crontab file to run Offlineimap as a cron job
- mailboxes, define list of Gmail mailboxes which will be used by both Mutt and Offlineimap
- mailcap, define applications to view different file types
- offlineimap.py, retrieve password from Keychain on local OSX

## References

- [Steve Losh's Guide](http://stevelosh.com/blog/2012/10/the-homely-mutt/), the definitive guide, command by command, to walk through how to set up Mutt and Offlineimap.
- Archlinux.org's guide on [Mutt](https://wiki.archlinux.org/index.php/mutt) and [Offlineimap](https://wiki.archlinux.org/index.php/OfflineIMAP) are extremely comprehensive and helpful.
- [How I Use Offlineimap](http://bkanuka.com/articles/offlineimap-mutt/), useful scripts of using Offlineimap effectively to mitigate some of its known issues.
- [Use Mac OS X's Keychain for Password Retrieval in OfflineIMAP](https://blog.aedifice.org/2010/02/01/use-mac-os-xs-keychain-for-password-retrieval-in-offlineimap/), important scripts that use `security` command line tool and `Keychain` app on OSX to retrieve password directly from Keychain, to avoid displaying Gmail password in plain-text in `.offlineimaprc` file.
- [Solarized Color Schemes for Mutt](https://github.com/altercation/mutt-colors-solarized), get the right colors. 
- [Setting up Launchd for Offlineimap](http://grantlucas.com/posts/2012/10/setting-launchd-offlineimap), how to use `launchd` to run Offlineimap in the background. Somehow `cron` just doesn't work with Offlineimap.

