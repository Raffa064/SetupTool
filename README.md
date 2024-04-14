# SETUP TOOL
This is an **shellscript** tool to create automated setups.

# HOW TO INSTALL

To install setup tool, use this command:
```bash
$ bash ./install.sh
```

You can uninstall by using this command:
$ setup uninstall # It will not delete your setups

# HOW TO USE
- To create a new setup:
```bash
$ setup new <setup-name>
```

- To edit a setup, you can use:
```bash
$ setup edit <setup-name>
```

- To open setup configs file:
```bash
$ setup config <setup-name>

```

- To run a setup:
```bash
$ setup run <setup-name>
```

- To list all setups:
```bash
$ setup list
```

- To uninstall the CLI:
```bash
$ setup uninstall [ --all-data ]
```
**NOTE:** The *"--all-data"* flag will delete all setups.


