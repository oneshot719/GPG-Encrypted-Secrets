# GPG-Encrypted-Secrets
Tools for using GPG/PGP encryption to securely store secret files (such as a password file) in a repository.

# Overview

This is a repository used by the team_name_here to share various encrypted secrets. The secrets file are encrypted with GPG.

# Setup

## Setup GPG Public Key

1. Clone this repo
1. Download the GPG software GPGTools from https://gpgtools.org/
1. Generate your GPG Keys
1. Open GPG Keychain
1. Generate a new keypair. Defaults are fine but make sure to use a passphrase and use your team_name_here e-mail address
1. Export the public key saving the file as FirstName_LastName.asc in the pubkeys folder of the clone of this repo
1. Push your new key to git (If you can't push, ask someone who can to add you)
1. Ask a team member to recrypt the passwords files with your key included
1. View, Decrypt, Encrypt and Recrypt as you like  


## How To

### Encrypt a file
```
cd secrets
./encrypt.sh file.txt

```

### Decrypt a file
```
cd secrets
./decrypt.sh file.txt.gpg
result is: new file named: DECRYPTED_file.txt

```

### View a file
```
cd secrets
./view.sh file.txt
```

### Using GPG plugin for VIM

Installing this VIM plugin should make decryption and re-encryption completely seamless.

```
git clone https://github.com/jamessan/vim-gnupg.git
cd vim-gnupg
cp -rv plugin ~/.vim
```

### Adding new users/keys to a file

Note: This needs to be done by a team member who's key is already in the file

```
cd secrets
./recrypt.sh top-secret.txt.gpg

```

This will pull any new keys, import them in your gpg store and encrypt the file with all the public keys giving access to any of the owners of said keys.

This will need to be done for every file you want to grant access to.  (so all of them)
