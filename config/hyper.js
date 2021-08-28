// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // Choose either 'stable' for receiving highly polished,
    // or 'canary' for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 12,

    // font family with optional fallbacks
    fontFamily: 'Menlo, monospace',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'grey',

    // `BEAM` for |, `UNDERLINE` for _, `BLOCK` for █
    cursorShape: 'BLOCK',

    // set to true for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: '#000',

    // terminal background color
    backgroundColor: '#fff',

    // selection color
    selectionColor: 'rgb(102, 102, 102)',

    // border color (window, tabs)
    borderColor: '#fff',

    // custom css to embed in the main window
    css: '',

    // custom css to embed in the terminal window
    termCSS: '',

    // set to `true` (without backticks) if you're using a Linux setup that doesn't show native menus
    // default: `false` on Linux, `true` on Windows (ignored on macOS)
    showHamburgerMenu: '',

    // set to `false` if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` on windows and Linux (ignored on macOS)
    showWindowControls: '',

    // custom padding (css format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: '#000000',
      red: 'rgb(151, 4, 12)',
      green: 'rgb(23, 164, 26)',
      yellow: 'rgb(153, 152, 29)',
      blue: 'rgb(5, 22, 175)',
      magenta: 'rgb(177, 25, 176)',
      cyan: 'rgb(26, 166, 177)',
      white: 'rgb(191, 191, 191)',
      lightBlack: 'rgb(102, 102, 102)',
      lightRed: 'rgb(227, 10, 23)',
      lightGreen: 'rgb(33, 215, 38)',
      lightYellow: 'rgb(229, 228, 49)',
      lightBlue: 'rgb(11, 38, 251)',
      lightMagenta: 'rgb(227, 35, 227)',
      lightCyan: 'rgb(39, 229, 228)',
      lightWhite: 'rgb(230, 229, 230)'
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // Powershell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: ['-i'])
    // by default ['--login'] will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {
       'SOBOLE_THEME_MODE': 'light'
    },

    // set to false for no bell
    bell: false,

    // if true, selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // number of lines to scroll upwards
    // https://github.com/zeit/hyper/issues/280
    scrollback: 10000,

    // if true, on right click selected text will be copied or pasted if no
    // selection is present (true by default on Windows)
    // quickEdit: true

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // for advanced config flags please refer to https://hyper.is/#cfg

    // Change how terminal is opened:
    summon: {
      hotkey: 'ctrl+;'
    },

    // custom plugin
    opacity: 0.95,
  },

  // a list of plugins to fetch and install from npm
  // format: [@org/]project[#version]
  // examples:
  //   `hyperpower`
  //   `@company/project`
  //   `project#1.0.1`
  plugins: [
    'hyper-tabs-enhanced',
    'hyperminimal',
    'hyperterm-summon',
    'hypercwd',
    'hyper-opacity',
    'hyper-search'
  ],

  hyperTabs: {
    trafficButtons: true,
    border: true
  },

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  }
};
