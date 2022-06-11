# Contributing

```{important}
   Do not edit README.md, as it is automatically created from the about and contributing pages!
```

To contribute, first download the [CIS Benchmarks] and find a section you
would like to help summarize. (See our examples for more info.)

Then, install the required python dependencies.

Windows:

```powershell
py -3 -m pip install sphinx myst_parser
```

Mac/Linux:

```bash
python3 -m pip install sphinx myst_parser
```

Then, clone the git repository and add your contributions to `/source`. Add
your contributions to `/source/index.rst` to make sure they appear on the
website and then build the webpage.

Windows:

```powershell
./make.bat github
```

Mac/Linux:

```bash
make github
```

Then open a pull request to publish your changes! Any help on this project is
greatly appreciated.

[CIS Benchmarks]: https://downloads.cisecurity.org/#/