# FFDS
> Small script for build a fast Front-End directory structure.

## Structure
```sh
$ wget -qO- https://git.io/ffds | sh
.
├── app
│   ├── assets
│   │   ├── fonts
│   │   │   └── .gitkeep
│   │   ├── images
│   │   │   └── .gitkeep
│   │   ├── scripts
│   │   │   └── main.js
│   │   └── styles
│   │       └── style.css
│   └── index.html
├── dist
├── .editorconfig
├── .gitattributes
├── .gitignore
├── license.md
├── readme.md
├── test
└── .travis.yml

8 directories, 11 files

```

## Usage

### URL
```sh
$ wget -qO- https://git.io/ffds | sh
```

### Local
```sh
$ ./ffds.sh
```
Or if you prefer you can create a symlink:

```sh
$ sudo ln -s ffds.sh /usr/bin/ffds
$ ffds
```

## Contributions

Please, this structure is not mandatory. Feel free to customize `ffds.sh` or send some [pull request](./pulls) or [issue](./issues).

## License

MIT

© 2016 José Luis Quintana
