# git-gc-etc

## Description
This script regularly runs `git gc` in `/etc/` to optimize the repository.

## Requirements
- A Git repository installed in `/etc/`
- A cron-capable system

## Installation
### Option 1: Install via Git

Clone the repository and navigate to the project directory:

```bash
git clone https://github.com/highTowerSU/git-gc-etc.git
cd git-gc-etc
```

Run the installation script:

```bash
sudo bash ./install.sh
```

This will:
- Copy the main script to `/usr/local/bin/git-gc-etc.sh`.
- Create a symlink in `/etc/cron.weekly/git-gc-etc.sh`.

### Option 2: One-Line Web Install

Run this command to download and execute the install script directly:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/highTowerSU/git-gc-etc/main/install.sh)"
```

## Usage

The script can be run manually or via cron:

### Manual Execution
```bash
/usr/local/bin/git-gc-etc.sh
```

### Automatic Execution via Cron
Add the following to your crontab if you need a different frequency than weekly:

```bash
30 2 * * 0 /usr/local/bin/git-gc-etc.sh
```

## Troubleshooting
If Git is not installed, install it with:

```bash
sudo apt update
sudo apt install git
```

If you experience permission issues, make sure the script is executable:
```bash
sudo chmod +x /usr/local/bin/git-gc-etc.sh
```

## License
This project is licensed under **AGPL-3.0**. See [LICENSE](LICENSE) for more details.
