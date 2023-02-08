;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs-base

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     (python :variables
             python-backend 'lsp
             python-lsp-server 'pyright
             python-format-on-save t
             python-sort-imports-on-save t)
     rust
     (julia :variables
            julia-mode-enable-ess t
            julia-backend 'lsp)
     typescript
     ess
     (erc :variables erc-enable-sasl-auth t)
     ;; python
     (go :variables
         go-tab-width 4
         gofmt-command "goimports"
         go-backend 'lsp
         go-use-golangci-lint t
         )
     markdown
     nginx
     csv
     spacemacs-project
     (lsp :variables
          lsp-lens-enable t
          lsp-headerline-breadcrumb-enable t
          )
     (docker :variables docker-dockerfile-backend 'lsp)
     dap
     (javascript :variables javascript-backend 'lsp)
     (java :variables java-backend 'lsp)
     (perl5 :variables perl5-backend 'lsp)
                                        ;     python
     (groovy :variables
             groovy-backend 'lsp
             ;; groovy-lsp-jar-path "~/opt/groovy-language-server/build/libs/groovy-language-server-all.jar"
             )
     vue

     html
     yaml
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     (shell-scripts :variables shell-scripts-backend 'lsp)
     (scheme :variables
             scheme-implementations '(guile racket chicken mit))
     (auto-completion
      :disabled-for org git cider-repl cider 
      :variables
      auto-completion-tab-key-behavior 'cycle
      auto-completion-complete-with-key-sequence nil
      auto-completion-complete-with-key-sequence-delay 0.1
      auto-completion-minimum-prefix-length 2
      auto-completion-idle-delay 0.2
      auto-completion-private-snippets-directory nil
      auto-completion-enable-snippets-in-popup nil
      auto-completion-enable-help-tooltip nil
      auto-completion-use-company-box nil
      auto-completion-enable-sort-by-usage nil)
     ;; better-defaults
     ;; emacs-lisp
     (clojure :variables
              clojure-enable-fancify-symbols t
              clojure-enable-linters 'clj-kondo
              clojure-backend 'lsp
              )
     git
     colors
     ;; markdown
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )


   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(multi-term
                                      smartparens
                                      lispy
                                      auto-complete
                                      ac-cider
                                      ir-black-theme
                                      s
                                      ;; emojify
                                      notmuch
                                      notmuch-transient
                                      helm-notmuch
                                      org-mime
                                      clomacs
                                      groovy-mode
                                      dockerfile-mode
                                      jsonnet-mode
                                      yaml-mode
                                      shrface
                                      helm-ag
                                      ac-helm
                                      ox-gfm
                                      dired-sidebar
                                      kubernetes
                                      terraform-mode
                                      badger-theme
                                      sly
                                      ;; slime
                                      deft
                                      ;; zetteldeft
                                      org-mind-map
                                      org-bullets
                                      helm-fuzzy
                                      wordnut
                                      org-download
                                      twittering-mode
                                      org-roam
                                      sqlite3
                                      vscode-dark-plus-theme
                                      geiser
                                      maxima
                                      toc-org
                                      ox-slack
                                      pepita
                                      httprepl
                                      ob-http
                                      dash
                                      (evil-magit :location (recipe :fetcher github :repo "emacs-evil/evil-magit"))
                                      weyland-yutani-theme
                                      company-tabnine
                                      fennel-mode
                                      inf-clojure
                                      cargo-transient
                                      znc
                                      erc-tweet
                                      erc-youtube
                                      erc-colorize
                                      multi-vterm
                                      elfeed
                                      elfeed-org
                                      elfeed-goodies
                                      slack
                                      paredit
                                      elisp-slime-nav
                                      lsp-scheme
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(vscode-dark-plus
                         weyland-yutani
                         spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 10.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   ;; dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-emacs-leader-key "C-;"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfer with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; HACK
  (setq helm-use-fuzzy t)
  ;; prevent org-roam error message
  (setq org-roam-v2-ack t)
  ;; dash doesn't load for some reason


  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; essential
  (keyboard-translate ?\C-q ?\C-x)
  (global-set-key (kbd "C-t") 'quoted-insert)
  (global-set-key (kbd "C-o") 'ace-window)
  (global-set-key (kbd "C-x x") 'helm-M-x)
  (global-set-key (kbd "C-x C-x") 'helm-M-x)
  (global-set-key (kbd "C-x '") 'term-toggle-mode)
  (global-set-key (kbd "C-x p") 'shell-here)
  (global-set-key (kbd "C-c d") 'docker)
  (global-set-key (kbd "C-c C-d") 'docker)
  (global-set-key (kbd "C-c e") 'eww)
  (global-set-key (kbd "C-c C-e") 'eww)
  (global-set-key (kbd "C-x C-p") 'shell-here)
  (global-set-key (kbd "C-c p") 'kube-shell)
  (global-set-key (kbd "C-c C-p") 'kube-shell)
  ;; (global-set-key (kbd "C-c P") 'kube-shell-aws)
  (global-set-key (kbd "C-c P") 'siri-kube)
  (global-set-key (kbd "C-c M-P") 'kube-config-here)
  (defun kube-config-here ()
    (interactive)
    (let ((yamls (completing-read "config: "
                                  (split-string (shell-command-to-string "find ~/.kube/config.d -type f")))))
      (insert yamls)))
  (global-set-key (kbd "C-c M-O") 'kube-config-set!)
  (global-set-key (kbd "C-c c") 'calendar)
  (global-set-key (kbd "C-x P") 'named-ssh)
  (global-set-key (kbd "C-x C-s") 'save-buffer)
  (global-set-key (kbd "M-O") 'revert-buffer)
  (global-set-key (kbd "M-o") 'shell-on-region)
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)
  (global-set-key (kbd "C-x RET") 'helm-mini)
  (global-set-key (kbd "C-x <C-return>") 'helm-mini)
  (global-set-key (kbd "C-x C-i") 'endless/ispell-word-then-abbrev)

  (global-set-key (kbd "C-x 2") 'split-window-below-and-focus)
  (global-set-key (kbd "C-x 3") 'split-window-right-and-focus)
  (global-set-key (kbd "C-x 4") 'wiki)
  (global-set-key (kbd "C-x 5 5") 'notes)
  (global-set-key (kbd "C-x 7") 'replace-regexp)
  (global-set-key (kbd "C-x 9") 'open-x-callback-url)
  (global-set-key (kbd "C-x `") (lambda ()
                                  (interactive)
                                  (runbook-pretty-print)
                                  ))
  (global-set-key (kbd "C-x (") (lambda ()
                                  (interactive)
                                  (notmuch-search "tag:inbox AND date:1M..today AND not tag:draft")
                                  ))

  (global-set-key (kbd "M-{") 'winner-undo)
  (global-set-key (kbd "M-}") 'winner-redo)

  ;; meta map
  (global-set-key (kbd "M-g s") 'helm-projectile-ag)
  ;; terminal
  (global-set-key (kbd "C-x '") 'toggle-term-mode)
  (global-set-key (kbd "C-x C-'") 'toggle-term-mode)
  
  ;; magit
  (global-set-key (kbd "C-x g g") 'magit-status)
  (global-set-key (kbd "C-x v '") 'magit-diff)
  (global-set-key (kbd "C-x v i") 'magit-init)
  (global-set-key (kbd "C-x v b") 'magit-branch-and-checkout)
  (global-set-key (kbd "C-x v C") 'vc-rollback)
  (global-set-key (kbd "C-x v V") 'magit-checkout)
  (global-set-key (kbd "C-x v v") 'magit-stage-file)
  (global-set-key (kbd "C-x v c") 'magit-commit-popup)
  (global-set-key (kbd "C-x v p") 'magit-push-popup)
  (global-set-key (kbd "C-x v M") 'vc-merge)
  (global-set-key (kbd "C-x v m") 'magit-merge-popup)

  (global-set-key (kbd "C-x v f") 'magit-fetch-popup)
  (global-set-key (kbd "C-x v S") 'vc-create-tag)
  (global-set-key (kbd "C-x v s") 'magit-stash-popup)
  (global-set-key (kbd "C-x v R") 'vc-retrieve-tag)
  (global-set-key (kbd "C-x v r") 'magit-rebase-popup)

  ;; org-mode
  (global-set-key (kbd "C-c ,") 'org-insert-structure-template)
  (global-set-key (kbd "C-c C--") 'org-edit-src-code)
                                        ; org-roam
  (global-set-key (kbd "C-c n n") 'helm-notmuch)
  (global-set-key (kbd "C-c n c") 'notmuch-search-by-tag)
  ;; (global-set-key (kbd "C-c n") 'notmuch-transient)
  ;; (global-set-key (kbd "C-c n f") 'vxe-org-roam-node-find)
  ;; (global-set-key (kbd "C-c n g") 'org-roam-graph)
  ;; (global-set-key (kbd "C-c n i") 'org-roam-node-insert)
  ;; (global-set-key (kbd "C-c n l") 'vxe-org-roam-buffer-toggle)
  ;; (global-set-key (kbd "C-c n c") 'org-roam-capture)
  ;; (global-set-key (kbd "C-c n r") 'org-roam-refresh)

                                        ; k8s
  (global-set-key (kbd "C-c k p") 'kube)
  (global-set-key (kbd "C-c k a") 'kaw)
  (global-set-key (kbd "C-c k A") 'kcli)
  (global-set-key (kbd "C-c k k") 'kprod)
  ;; projectile
  (global-set-key (kbd "C-c f") 'helm-projectile-find-file)

  ;; C-c commands
  ;; (global-set-key (kbd "C-c C-e") 'emojify-insert-emoji)
  (global-set-key (kbd "C-c a") 'org-agenda)
  (global-set-key (kbd "C-c v") 'org-capture)



  ;; default overrides
  (global-unset-key (kbd "C-z"))
  (setq-default major-mode 'org-mode)
  (appt-activate) ;; appointments
  (global-set-key (kbd "C-x r w") 'copy-rectangle-to-system-clipboard) ;overrides window-configuration to editor

  ;; preload hacks
  (dash-register-info-lookup)           ;dash doesn't lod
  ;; org
  (progn
    ;; org capture 
    (defvar my-org-capture-before-config nil
      "Window configuration before `org-capture'.")

    (defadvice org-capture (before save-config activate)
      "Save the window configuration before `org-capture'."
      (setq my-org-capture-before-config (current-window-configuration)))

    (add-hook 'org-capture-mode-hook 'delete-other-windows)

    (defun my-org-capture-cleanup ()
      "Clean up the frame created while capturing via org-protocol."
      ;; In case we run capture from emacs itself and not an external app,
      ;; we want to restore the old window config
      (when my-org-capture-before-config
        (set-window-configuration my-org-capture-before-config))
      (-when-let ((&alist 'name name) (frame-parameters))
        (when (equal name "org-protocol-capture")
          (delete-frame))))

    (add-hook 'org-capture-after-finalize-hook 'my-org-capture-cleanup)

    ;; org-roam
    (defun org-roam-refresh ()
      (interactive)
      (org-roam-db-sync))

    (defun vxe-org-roam-node-find ()
      (interactive)
      (org-roam-refresh)
      (org-roam-node-find))

    (defun vxe-org-roam-buffer-toggle ()
      (interactive)
      (org-roam-refresh)
      (org-roam-buffer-toggle))

    ;; org download
    (require 'org-download)

    (defun clipboard-image-paste ()
      (interactive)
      (org-download-clipboard)
      (org-toggle-inline-images)
      (org-toggle-inline-images)))


  (if (string= window-system "ns")
      (progn   (setq mac-command-modifier 'meta)
               (setq mac-option-modifier 'super)
               (setq ns-function-modifier 'hyper)))
;;; helm
  (progn
    (require 'helm)
    ;; (require 'helm-conf)
    (define-key helm-map (kbd "TAB") #'helm-execute-persistent-action)
    (define-key helm-map (kbd "<tab>") #'helm-execute-persistent-action)
    (define-key helm-map (kbd "C-z") #'helm-select-action)
    ;; lock helm buffer to bottom
    ;; https://www.reddit.com/r/emacs/comments/345vtl/make_helm_window_at_the_bottom_without_using_any/
    (add-to-list 'display-buffer-alist
                 `(,(rx bos "*helm" (* not-newline) "*" eos)
                   (display-buffer-in-side-window)
                   (inhibit-same-window . t)
                   (window-height . 0.4)))
    )

  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; yas
  (progn (add-hook 'cider-repl-mode-hook #'yas-minor-mode))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; minor mode customization
  (progn
    ;; _elisp
    (require 'elisp-slime-nav)
    ;; goto def for elisp sources
    (dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
      (add-hook hook 'elisp-slime-nav-mode))
    )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; structure editing
  (progn
    (require 'lispy)
    (require 'paredit)
    (require 'smartparens)
    (require 'ielm)
    (require 's)
    ;; elisp
    (add-hook 'emacs-lisp-mode-hook #'yas-minor-mode)
    (add-hook 'emacs-lisp-mode-hook #'lispy-mode)
    ;; (add-hook 'emacs-lisp-mode-hook #'paredit-mode)
    (add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
    ;; fix tab completion
    (setq tab-always-indent 'complete)
    (add-to-list 'completion-styles 'initials t)
    ;; (define-key emacs-lisp-mode-map (kbd "DEL") 'lispy-delete-backward)
    ;; elisp repl
    ;; (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
    ;; (add-hook 'ielm-mode-hook             #'rainbow-delimiters-mode)
    
    (defun vxe/lisp-structure-editing (hook map)
      ;; hook quoted 'ielm-mode-hook
      ;; map symbol literal ielm-map
      (add-hook hook (function (lambda ()
                                 (define-key map (kbd "DEL") 'lispy-delete-backward)
                                 (define-key map  (kbd "C-j") 'sp-newline)
                                 (define-key map  (kbd ">") 'special-lispy-slurp)
                                 (define-key map  (kbd "<") 'special-lispy-barf)
                                 (define-key map  (kbd "C-k") 'lispy-kill)
                                 (define-key map  (kbd "C-y") 'lispy-yank)
                                 (define-key map  (kbd "(") 'paredit-open-round)
                                 (define-key map (kbd "[") 'paredit-open-square)
                                 (define-key map  (kbd ")") 'lispy-right-nostring)))))

    (vxe/lisp-structure-editing 'ielm-mode-hook ielm-map)

    (add-hook 'ielm-mode-hook             #'show-paren-mode)
    (add-hook 'ielm-mode-hook             #'eldoc-mode)
    ;; (add-hook 'ielm-mode-hook             #'lispy-mode)
    ;; (add-hook 'ielm-mode-hook             #'smartparens-mode)
    

    (define-key ielm-map (kbd "DEL") 'lispy-delete-backward)
    (define-key ielm-map (kbd "C-j") 'sp-newline)
    
    ;; python
    (require 'smartparens-python)
    (add-hook 'inferior-python-mode-hook #'(lambda ()
                                             (compilation-shell-minor-mode -1)))
    ;; perl
    (require 'perl-mode)
    (define-key perl-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    ;; clojure
    (require 'clojure-mode)
    (require 'cider)
    (require 'auto-complete)
    ;; clojure
    (add-hook 'clojure-mode-hook #'lispy-mode)
    (add-hook 'clojure-mode-hook #'prettify-symbols-mode)
    ;; clojure repl
    ;; (add-hook 'cider-repl-mode-hook #'prettify-symbols-mode)
    (add-hook 'cider-repl-mode-hook #'lispy-mode)

    ;; global lispy remaps
    (define-key lispy-mode-map (kbd "[") 'paredit-open-square)
    (define-key lispy-mode-map (kbd "{") nil)
    (define-key lispy-mode-map (kbd "M-.") nil)
    ;; Cider Repl
    (define-key cider-repl-mode-map (kbd "M-.") 'cider-find-var)
    (define-key cider-repl-mode-map (kbd "C-y") 'lispy-yank)
    (define-key cider-repl-mode-map (kbd "C-k") 'lispy-kill)
    (define-key cider-repl-mode-map (kbd "DEL") 'lispy-delete-backward)
    (define-key cider-repl-mode-map (kbd "C-c M-n") 'cider-repl-set-ns)
    (define-key cider-repl-mode-map (kbd "C-c b") 'cider-repl-clear-buffer)

    ;; Fennel
    (require 'fennel-mode)
    (define-key fennel-repl-mode-map (kbd "C-y") 'lispy-yank)
    (define-key fennel-repl-mode-map (kbd "C-k") 'lispy-kill)
    (add-hook 'fennel-repl-mode-hook #'lispy-mode)
    ;; json
    (require 'json-mode)
    (define-key json-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)

    ;; terraform
    (require 'terraform-mode)
    (define-key terraform-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    ;; bash/zsh
    ;; babashka
    (setq auto-mode-alist (cons '("\\.bb$" . clojure-mode) auto-mode-alist))

    ;; rust
    (require 'rust-mode)
    (add-hook 'rust-mode-hook #'smartparens-mode)
    (add-hook 'rust-mode-hook #'lsp-mode)
    (add-hook 'rust-mode-hook #'lsp-ui-mode)
    (define-key rust-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    (define-key rust-mode-map (kbd "<f7>") 'cargo-run)
    ;; java
    (require 'cc-mode)
    (add-hook 'java-mode-hook #'smartparens-mode)
    (add-hook 'java-mode-hook #'lsp-mode)
    (add-hook 'java-mode-hook #'lsp-ui-mode)
    (define-key java-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)

    ;; scheme
    (require 'lispy)
    (require 'geiser)
    (require 'geiser-repl)
    (require 'geiser-guile)
    (require 'geiser-chicken)
    ;; geiser repl
    (add-hook 'geiser-repl-mode-hook #'prettify-symbols-mode)
    ;; (add-hook 'geiser-repl-mode-hook #'lispy-mode)
    ;; (add-hook 'geiser-repl-mode-hook #'smartparens-mode)
    (vxe/lisp-structure-editing 'geiser-repl-mode-hook geiser-repl-mode-map)
    ;; repl
    (unbind-key (kbd "C-j") lispy-mode-map)
    (define-key geiser-repl-mode-map (kbd "C-y") 'lispy-yank)
    (define-key geiser-repl-mode-map (kbd "C-k") 'lispy-kill)
    (define-key geiser-repl-mode-map (kbd "DEL") 'lispy-delete-backward)
    (define-key lispy-mode-map (kbd "C-j") nil)
    (define-key geiser-repl-mode-map (kbd "C-j") nil)
    (define-key geiser-repl-mode-map (kbd "C-j") 'sp-newline)
    ;; scheme mode
    (add-hook 'scheme-mode-hook #'prettify-symbols-mode)
    (add-hook 'scheme-mode-hook #'lispy-mode)
    (add-hook 'scheme-mode-hook #'smartparens-mode)

    ;; common lisp
    (setq inferior-lisp-program "/usr/local/bin/sbcl")
    (require 'sly)

    (vxe/lisp-structure-editing 'sly-mode-hook sly-mode-map)
    (add-hook 'lisp-mode-hook '(lambda ()
                                 ;; (paredit-mode)
                                 ;; (smartparens-mode)
                                 (sly-mode)
                                 (setq smartparens-mode nil)
                                 (lispy-mode)
                                 ))
    (add-hook 'sly-mrepl-mode-hook '(lambda ()
                                      ;; (paredit-mode)
                                      ;; (smartparens-mode)
                                      (setq smartparens-mode nil)
                                      ))
    ;; (add-hook 'slime-repl-mode-hook '(lambda ()
    ;;                                    ;; (paredit-mode)
    ;;                                    ;; (smartparens-mode)
    ;;                                    (setq smartparens-mode nil)
    ;;                                    (lispy-mode)
    ;;                                    (define-key lispy-mode-map (kbd "C-j") 'nil)
    ;;                                    (define-key slime-repl-mode-map (kbd "C-j") 'electric-newline-and-maybe-indent) 
    ;;                                    )) 
    ;; (cond ((file-exists-p "~/opt/slime/slime-autoloads.el")
    ;;        (require 'slime-autoloads)
    ;;        (setq slime-contribs '(slime-editing-commands))))
    ;; (add-hook 'mrepl-mode-hook #'auto-complete-mode)
    ;; (add-hook 'mrepl-mode-hook #'ac-cider-setup)
    ;; (add-hook 'mrepl-mode-hook #'yas-minor-mode) 
    (define-key lispy-mode-map (kbd "[") 'paredit-open-square)
    (define-key lispy-mode-map (kbd "(") 'paredit-open-round)
    (define-key lispy-mode-map (kbd "{") nil)
    (define-key lispy-mode-map (kbd "M-o") nil)
    (define-key lispy-mode-map (kbd "C-j") nil)

    (setq lispy-colon-p nil)
    (define-key lispy-mode-map (kbd "M-.") nil)
    (define-key sly-mode-map (kbd "C-c M-n") 'sly-mrepl-set-package)
    (define-key sly-mode-map (kbd "C-j") 'electric-newline-and-maybe-indent) 
    (define-key sly-mode-map (kbd "C-c b") 'sly-mrepl-clear-repl)
    (define-key sly-mode-map (kbd ">") 'special-lispy-slurp)
    (define-key sly-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    (define-key sly-mode-map (kbd "DEL") 'lispy-delete-backward)
    (define-key sly-mode-map (kbd "C-x 4") 'wiki)
    ;; c/c++
    (require 'cc-mode)
    (add-hook 'c-mode-hook #'smartparens-mode)
    (define-key c-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    ;; python
    ;; (add-hook 'python-mode-hook #'smartparens-mode)
    ;; (define-key python-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    ;; golang
    (require 'go-mode)

    (add-hook 'go-mode-hook #'smartparens-mode)
    (add-hook 'go-mode-hook #'lsp-mode)
    (add-hook 'go-mode-hook #'lsp-ui-mode)
    (define-key go-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    ;; shell script

    (require 'sh-script)
    (add-hook 'sh-mode-hook #'smartparens-mode)
    (define-key sh-mode-map (kbd "C-k") 'sp-kill-hybrid-sexp)
    ;; org-mode
    (add-hook 'org-mode-hook #'smartparens-mode)
    )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; auto-completion

  (progn
    ;; clojure
    (add-hook 'cider-repl-mode-hook #'auto-complete-mode)
    (add-hook 'cider-repl-mode-hook #'ac-cider-setup)
    (define-key ac-complete-mode-map "\C-n" 'ac-next)
    (define-key ac-complete-mode-map "\C-p" 'ac-previous)
    ;; elisp 
    (defun elisp-auto-complete ()
      "Enables `auto-complete' support in \\[ielm]."
      (setq ac-sources '(ac-source-functions
                         ac-source-variables
                         ac-source-features
                         ac-source-symbols
                         ac-source-words-in-same-mode-buffers))
      (add-to-list 'ac-modes 'inferior-emacs-lisp-mode)
      (auto-complete-mode 1))
    (add-hook 'emacs-lisp-mode-hook 'elisp-auto-complete)
    ;; clojure repl
    (setq company-global-modes '(not org-mode cider-repl-mode))
    (add-hook 'cider-repl-mode-hook #'(lambda ()
                                        (company-mode -1)))
    

    ;; c/c++

    ;; python
    ;; (add-hook 'python-mode-map (lambda ()
    ;;                              (add-to-list 'company-backends #'company-tabnine)
    ;;                              ))

    ;; shell scripts
    (require 'sh-script)
    (defun company-die ()
      (company-mode -1))
    (add-hook 'sh-mode-hook 'company-die)

    )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; LSP
  (progn
    ;; clojure
    (add-hook 'clojure-mode-hook #'lsp-mode)
    (add-hook 'clojure-mode-hook #'lsp-ui-mode)
    (add-hook 'clojure-mode-hook #'lsp)
    ;; scheme
    (defun org-babel-edit-prep:scheme (babel-info)
      (setq-local buffer-file-name (->> babel-info caddr (alist-get :tangle)))
      (lsp))
    ;; c/c++
    (add-hook 'c-mode-hook #'lsp-mode)
    (add-hook 'c-mode-hook #'lsp-ui-mode)
    (add-hook 'c-mode-hook #'lsp)

    (add-hook 'c-initialization-hook (lambda ()
                                       (add-to-list 'company-backends #'company-tabnine)))
    ;; python
    (add-hook 'python-mode-hook #'lsp-mode)
    (add-hook 'python-mode-hook #'lsp-ui-mode)
    (add-hook 'python-mode-hook #'lsp)
    (defun org-babel-edit-prep:python (babel-info)
      (setq-local buffer-file-name (->> babel-info caddr (alist-get :tangle)))
      (lsp))
    ;; js
    (require 'js2-mode)
    (define-key js2-mode-map (kbd "M-.") nil)
    (define-key js2-mode-map (kbd "M-.") #'lsp-ui-peek-find-definitions))
  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; flycheck
  (progn
    ;; clojure
    ;; clj-kondo required: brew install borkdude/brew/clj-kondo
    )
  ;; multi-vterm

  ;; terminal config
  (progn
    (require 'multi-vterm)
    (defun shell-here ()
      "Launch a shell in the current window."
      (interactive)
      (multi-vterm)
      (yas-minor-mode))

    (defun term-toggle-mode ()
      (interactive)
      (if (term-in-line-mode)
          (term-char-mode)
        (term-line-mode)))
    (define-key vterm-mode-map (kbd "C-o") nil)
    (define-key vterm-mode-map (kbd "M-w") nil)
    (define-key vterm-mode-map (kbd "M-{") nil)
    (define-key vterm-mode-map (kbd "M-}") nil)
    (define-key vterm-mode-map (kbd "C-c C-'") 'term-toggle-mode)
    (define-key vterm-mode-map (kbd "C-c '") 'term-toggle-mode)
    (add-hook 'term-mode-hook (lambda ()
                                (progn
                                  (defun expose-global-binding-in-term (binding)
                                    (define-key term-raw-map binding
                                      (lookup-key (current-global-map) binding)))
                                  (expose-global-binding-in-term (kbd "C-o"))))))


  ;; org mode
  (progn 
    (require 'org)
    (require 'ox-org)
    (require 'org-tempo)
    ;; make c-c run aynsc-shell command instead of eval'ing and pasting
    (define-key org-mode-map (kbd "C-c C-c") 'vxe:org-ctrl-c-ctrl-c)
    (defun vxe:org-ctrl-c-ctrl-c ()
      (interactive)
      (let ((command (s-trim (org-element-property :value (org-element-at-point)))))
        (if (string= "sh"
                     (org-element-property :language (org-element-at-point)))
            (let ((dir (cdr (assoc :dir (org-header-parse (org-element-property :parameters (org-element-at-point))))))
                  (buffer-name (concat "*"
                                       " "
                                       ;; (car (last (s-split "/" (getenv "KUBECONFIG"))))
                                       (if (getenv "KUBECONFIG")
                                           (car (last (s-split "/" (getenv "KUBECONFIG"))))
                                         "")
                                       " "
                                       command
                                       " "
                                       (current-time-string)
                                       " "
                                       "*")))
              (if dir
                  (async-shell-command (concat "cd " dir "; " command) ; cd to org header directory 
                                       buffer-name)
                (async-shell-command command
                                     buffer-name)))
          (org-ctrl-c-ctrl-c))))

    (define-key org-mode-map (kbd "C-c C-v t") 'vxe:org-tangle)
    (defun vxe:org-tangle ()
      (interactive)
      (progn
        (setq current-prefix-arg '(4)) 
        (call-interactively 'org-babel-tangle)))

    (add-hook 'org-mode-hook #'auto-fill-mode)
    (add-hook 'org-mode-hook #'turn-on-flyspell)
    (add-hook 'org-mode-hook #'yas-minor-mode)
    (add-hook 'org-mode-hook #'yas-reload-all)
    (add-hook 'org-mode-hook #'toc-org-mode)
    ;; (add-hook 'org-mode-hook #'emojify-mode)
    (define-key org-mode-map (kbd "M-{") nil)
    (define-key org-mode-map (kbd "M-}") nil)
    (define-key org-mode-map (kbd "C-c ,") nil)
    ;; (define-key org-mode-map (kbd "C-c n") 'org-narrow-to-subtree)
    ;; (define-key org-mode-map (kbd "C-c N") 'widen)
    (define-key org-mode-map (kbd "C-c i") 'yas-expand)
    (define-key org-mode-map (kbd "C-c C-i") 'yas-expand)

    (define-key org-mode-map (kbd "C-c C-y") 'org-store-link)
    (define-key org-mode-map (kbd "C-x Q") 'org-set-tags-command)
    (define-key org-mode-map (kbd "C-c C-;") 'org-roam-tag-add) 
    (define-key org-mode-map (kbd "C-c C-k") 'org-roam-insert)
    (define-key org-mode-map (kbd "M-.") 'org-open-at-point)
    (define-key org-mode-map (kbd "M-,") 'org-mark-ring-goto)
    (define-key org-mode-map (kbd "C-c o") 'wordnut-search)
    (define-key org-mode-map (kbd "C-c C-o") 'wordnut-search)
    (org-defkey org-mode-map [(meta return)] 'org-meta-return)
    ;; (define-key org-mode-map (kbd "<M-return> i i")  'org-insert-item))
    (define-key org-mode-map (kbd "C-x R") 'avy-org-refile-as-child)
    ;; (define-key org-mode-map (kbd "<M-return> <return>") 'org-insert-item)
    ;; org bullet
    (require 'org-bullets)
    (add-hook 'org-mode-hook #'org-bullets-mode)
    ;; org-mind-map
    (setq org-mind-map-engine "dot")
    )
  ;; org-roam
  (progn
    (require 'org-roam)
    (setq org-roam-directory "~/Work/Emacs/org-roam")
    (add-hook 'after-init-hook 'org-roam-mode))
  ;; agenda calendar
  (progn
    (require 's)
    (require 'f)
    (if (file-exists-p ".agenda")
        (setq org-agenda-files (list (s-chomp (f-read ".agenda")))))
    )
  ;; dired
  (progn
    (require 'dired-sidebar)
    ;; (require 'all-the-icons)
    (define-key dired-mode-map (kbd "M-{") nil)
    (define-key dired-mode-map (kbd "M-}") nil)
    (define-key dired-mode-map (kbd "C-o") nil)
    (define-key dired-sidebar-mode-map (kbd "C-o") nil))
  ;; theme config
  (progn
    ;; (load-theme 'ir-black)
    ;; (load-theme 'weyland-yutani)


    ;; font lock for let-alist
    (font-lock-add-keywords
     'emacs-lisp-mode
     '(("\\_<\\.\\(?:\\sw\\|\\s_\\)+\\_>" 0 
        font-lock-builtin-face)))

    ;; add shr org faces
    (with-eval-after-load 'shr ; lazy load is very important, it can save you a lot of boot up time
      (require 'shrface)
      (shrface-basic) ; enable shrfaces, must be called before loading eww/dash-docs/nov.el
      (shrface-trial) ; enable shrface experimental face(s), must be called before loading eww/dash-docs/nov.el
      (setq shrface-href-versatile t) ; enable versatile URL faces support
                                        ; (http/https/ftp/file/mailto/other), if
                                        ; `shrface-href-versatile' is nil, default
                                        ; face `shrface-href-face' would be used.
      ;; eww support
      (with-eval-after-load 'eww
        (add-hook 'eww-after-render-hook 'shrface-mode))
      )
    )
  ;; email config
  (progn
    (require 'notmuch)
    (define-key notmuch-show-mode-map (kbd "q") 'winner-undo)

    (defun mbsync ()
      (interactive)
      (async-shell-command "/opt/brew/bin/mbsync -c ~/.mbsyncrc.triton-sre -a -V 2>&1 " "*mbsync*"))
    )

  ;; elfeed
  (progn
    (require 'elfeed)
    (require 'elfeed-goodies)
    (elfeed-goodies/setup)
    ;; Load elfeed-org
    (require 'elfeed-org)

    ;; Initialize elfeed-org
    ;; This hooks up elfeed-org to read the configuration when elfeed
    ;; is started with =M-x elfeed=
    (elfeed-org)

    ;; Optionally specify a number of files containing elfeed
    ;; configuration. If not set then the location below is used.
    ;; Note: The customize interface is also supported.
    (setq rmh-elfeed-org-files (list "~/.spacemacs.d/elfeed.org")))
  ;; winner moode
  (progn
    (define-key diff-mode-map (kbd "M-{") nil)
    (define-key diff-mode-map (kbd "M-}") nil))

  ;; additional software config
  (progn
    (progn
                                        ; maxima
      
      (let* ((imaxima-source (car (split-string (shell-command-to-string "find /usr/local/Cellar/maxima/ -name imaxima.el") "\n")))
             (imaxima-dir (car (split-string imaxima-source))))
        (if (file-exists-p imaxima-source)
            (progn
              (add-to-list 'load-path imaxima-dir))))) ;; maxima - broken
    (let* ((imaxima-source (car (split-string (shell-command-to-string "find /usr/local/Cellar/maxima/ -name imaxima.el") "\n")))
           (imaxima-dir (car (split-string imaxima-source))))
      (if (file-exists-p imaxima-source)
          (progn
            (add-to-list 'load-path imaxima-dir)))))

  ;; (load-file "/Users/vedwin/wrk/lab/fml/.spacemacs.d/fml.el")

                                        ; pepita
  (require 'pepita)
                                        ; jupyter
  (progn
    
    )


  ;; personal elisp
  (defvar INCLUDES (list
                    "~/.spacemacs.d/gentoo.el"))
  (mapcar
   (lambda (file)
     (cond ((file-exists-p file) (load-file file)))
     )
   INCLUDES)


  ;; utilities

  (defun org-header-parse (org-header-string)
    (if org-header-string
        (let* ((headers (split-string org-header-string))
               (odds (mapcar
                      (lambda (x)
                        (intern-soft x))
                      (elements-at-odd-positions headers)))
               (evens (elements-at-even-positions headers)))
          (mapcar* #'cons odds evens))
      ;; if no header arguments return the empty list
      '()))


  (defun elements-at-odd-positions  (lst)
    (do ((l lst (cddr l))
         (x '() (cons (car l) x)))
        ((null l)
         (nreverse x))))

  (defun elements-at-even-positions (list)
    (loop for element in list
          for even-position = nil then (not even-position)
          when even-position collect element))
  (defun replace-regexp-entire-buffer (pattern replacement)
    "Perform regular-expression replacement throughout buffer."
    (interactive
     (let ((args (query-replace-read-args "Replace" t)))
       (setcdr (cdr args) nil)   ; remove third value returned from query---args
       args))
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward pattern nil t)
        (replace-match replacement))))

  (defun load-project-elisp ()
    "load everything in the .el file of a project"
    (interactive)
    (mapc 'load (file-expand-wildcards (concat (projectile-project-root) ".el/*.el"))))
  
  (defun get-string-from-file (filePath)
    "Return filePath's file content."
    (with-temp-buffer
      (insert-file-contents filePath)
      (buffer-string)))

  ;; serve directory html
  (defun html-serve (port)
    (interactive "sport: ")
    (with-temp-buffer
      (cd default-directory)
      (async-shell-command
       (concat "python -m SimpleHTTPServer " port)
       (concat "*HTML Serving* " default-directory))))


  ;; fix copy paste
  ;; (defun copy-from-osx ()
  ;;   "http://stackoverflow.com/questions/9985316/how-to-paste-to-emacs-from-clipboard"
  ;;   (shell-command-to-string "pbpaste"))


  ;; (defun paste-to-osx (text &optional push)
  ;;   "http://stackoverflow.com/questions/9985316/how-to-paste-to-emacs-from-clipboard"
  ;;   (let ((process-connection-type nil))
  ;;     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
  ;;       (process-send-string proc text)
  ;;       (process-send-eof proc))))

  (defun copy-from-osx ()
    "Handle copy/paste intelligently on osx."
    (let ((pbpaste (purecopy "/usr/bin/pbpaste")))
      (if (and (eq system-type 'darwin)
               (file-exists-p pbpaste))
          (let ((tramp-mode nil)
                (default-directory "~"))
            (shell-command-to-string pbpaste)))))

  (defun paste-to-osx (text &optional push)
    (let ((process-connection-type nil))
      (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
        (process-send-string proc text)
        (process-send-eof proc))))
  

                                        ; make copy and paste work
  (cond ((eq system-type 'darwin)
         ;; (setq interprogram-cut-function 'paste-to-osx)
         ;; (setq interprogram-paste-function 'copy-from-osx)
         (setq interprogram-cut-function 'paste-to-osx
               interprogram-paste-function 'copy-from-osx)
         )
        ((eq system-type 'linux)
         (message "good os"))))

;; workflow
(defun buffer-to-org ()
  (interactive)
  (let* ((format (completing-read "source format:" '("bibtex" "biblatex" "commonmark" "commonmark_x" "creole" "csljson" "csv" "tsv" "docbook" "docx" "dokuwiki" "endnotexml" "epub" "fb2" "gfm" "haddock" "html" "ipynb" "jats" "jira" "json" "latex" "markdown" "markdown_mmd" "markdown_phpextra" "markdown_strict" "mediawiki" "man" "muse" "native" "odt" "opml" "ris" "rtf" "rst" "t2t" "textile" "tikiwiki" "twiki" "vimwiki")))
         (org-buf (generate-new-buffer (format "*%s.org*" (buffer-name))))
         (source-file (shell-quote-argument (buffer-file-name)))
         (cmd (string-join `("cat "
                             ,source-file
                             "| pandoc "
                             "--from "
                             ,format
                             "--to org"
                             "--wrap=preserve"
                             "--standalone")
                           " ")))
    (with-current-buffer org-buf
      (org-mode)
      (shell-command cmd t)
      (view-mode))
    (pop-to-buffer org-buf)))

(defun copy-rectangle-to-system-clipboard (start end)
  "https://emacs.stackexchange.com/questions/33202/copying-an-rectangular-selection-to-system-clipboard/33210#33210"
  (interactive "r")
  (call-interactively #'copy-rectangle-as-kill)
  (with-temp-buffer
    (yank-rectangle)
    (delete-trailing-whitespace)
    (funcall interprogram-cut-function (buffer-string))))


(defun endless/simple-get-word ()
  (car-safe (save-excursion (ispell-get-word nil))))

(defun endless/ispell-word-then-abbrev (p)
  "Call `ispell-word', then create an abbrev for it.
With prefix P, create local abbrev. Otherwise it will
be global.
If there's nothing wrong with the word at point, keep
looking for a typo until the beginning of buffer. You can
skip typos you don't want to fix with `SPC', and you can
abort completely with `C-g'."
  (interactive "P")
  (let (bef aft)
    (save-excursion
      (while (if (setq bef (endless/simple-get-word))
                 ;; Word was corrected or used quit.
                 (if (ispell-word nil 'quiet)
                     nil              ; End the loop.
                   ;; Also end if we reach `bob'.
                   (not (bobp)))
               ;; If there's no word at point, keep looking
               ;; until `bob'.
               (not (bobp)))
        (backward-word)
        (backward-char))
      (setq aft (endless/simple-get-word)))
    (if (and aft bef (not (equal aft bef)))
        (let ((aft (downcase aft))
              (bef (downcase bef)))
          (define-abbrev
            (if p local-abbrev-table global-abbrev-table)
            bef aft)
          (message "\"%s\" now expands to \"%s\" %sally"
                   bef aft (if p "loc" "glob")))
      (user-error "No typo at or before point"))))


(defun shell-on-region ()
  (interactive)
  (let ((current-prefix-arg 4)) ;; emulate C-u
    (call-interactively 'shell-command-on-region)))

(defun delete-file-and-buffer ()
  (interactive)
    (let ((current-prefix-arg 4)) ;; emulate C-u
      (call-interactively 'delete-file)
      (kill-buffer)))

(defun buffer-whole-string (chosen-buffer)
  (interactive "sbuffer-name: ")
  (let ((buffer (get-buffer chosen-buffer)))
    (with-current-buffer buffer
      (save-restriction
        (widen)
        (buffer-substring-no-properties (point-min) (point-max))))))



;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(NOTEBOOK-ROOT-ORG "/Users/vedwin/wrk/lab/org-sos")
 '(PC-WORKSPACE "/Users/vedwin/wrk/lab")
 '(RUST-ROOT "/Users/vedwin/wrk/lab/rustlang")
 '(WORK-SECRETS "/Users/vedwin/wrk/wiki")
 '(ansi-color-names-vector
   ["#080808" "#d70000" "#67b11d" "#875f00" "#268bd2" "#af00df" "#00ffff" "#b2b2b2"])
 '(auth-sources '("~/.authinfo"))
 '(aw-keys '(102 101 112 110 53 54 55 56 57))
 '(cider-use-tooltips nil)
 '(custom-safe-themes
   '("6c4c97a17fc7b6c8127df77252b2d694b74e917bab167e7d3b53c769a6abb6d6" "0ed28b0694dd2c7a2407598e63650a8562b9e833a1a136ee74790a74d3776d3b" "f279ced5c013ff32695e5e2cc99de66597857f1ca8ba3799815984109adb9573" "dc2cdca2f32386a308057cac6abde24c07b470cf17847c784c79ecd3a23ee09a" "716f0a8a9370912d9e6659948c2cb139c164b57ef5fda0f337f0f77d47fe9073" "86702206a95d7b0a5710fa00d52bd165ed5b438760894f2d7756cc3096bca468" "28c56a3c5e503137ddbd75c09550955bf9138839289c5daa535a5adba3b068dd" "62b36dfb65f112784e3a63d5226a86e75458adba516a899dacde1068bc3a30e6" "bb38670847b79d986a2cd21dfe1895a07d78fc67f16cb780253e23f1b40bdbd5" "45e76a1b1e3bd74adb03192bf8d6eea2e469a1cf6f60088b99d57f1374d77a04" "43f03c7bf52ec64cdf9f2c5956852be18c69b41c38ab5525d0bedfbd73619b6a" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "dcf7154867ba67b250fe2c5cdc15a7d170acd9cbe6707cc36d9dd1462282224d" "25da85b0d62fd69b825e931e27079ceeb9fd041d14676337ea1ce1919ce4ab17" "31f8d16d264e14e8e39c4f291e26cdd5516772a41660ef2ad895244c22024bd2" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fcecf5757b909acbacc4fea2fa6a5fb9a63776be43cbff1dc0dffc9c02674478" "88049c35e4a6cedd4437ff6b093230b687d8a1fb65408ef17bfcf9b7338734f6" default))
 '(deft-directory "~/Dropbox/org-roam")
 '(diary-file "~/Dropbox/Emacs/diary")
 '(display-buffer-alist
   '(("\\\\*K8s.*" display-buffer-same-window
      (nil))
     ("\\`\\*helm.*\\*\\'"
      (display-buffer-in-side-window)
      (inhibit-same-window . t)
      (window-height . 0.4))))
 '(evil-want-Y-yank-to-eol nil)
 '(find-file-hook nil)
 '(geiser-guile-binary "/root/.asdf/shims/guile")
 '(helm-completion-style 'emacs)
 '(imaxima-pt-size 12)
 '(imaxima-scale-factor 2.0)
 '(julia-program
   "/Applications/Julia-1.5.app/Contents/Resources/julia/bin/julia ")
 '(kubernetes-default-overview-namespace "prod")
 '(kubernetes-poll-frequency 3600)
 '(magit-display-buffer-function 'magit-display-buffer-fullframe-status-v1)
 '(mail-host-address "notmuch-client-fml-edition")
 '(mu4e-maildir "~/var/run/triton-sre")
 '(multi-term-program "/bin/zsh")
 '(multi-vterm-program "/bin/zsh")
 '(notmuch-search-oldest-first nil)
 '(nrepl-sync-request-timeout 600)
 '(org-agenda-files
   '("~/wiki/ref-training-siri-2" "/Users/vedwin/wrk/lab/fml/wiki/ref-prejects" "/Users/vedwin/wrk/lab/fml/wiki/ref-handoffs.org" "/Users/vedwin/wrk/lab/fml/Dropbox/org/inbox.org"))
 '(org-agenda-include-diary t)
 '(org-babel-clojure-backend 'cider)
 '(org-babel-clojure-sync-nrepl-timeout 1000)
 '(org-babel-lisp-eval-fn 'sly-eval)
 '(org-babel-load-languages
   '((clojure . t)
     (emacs-lisp . t)
     (shell . t)
     (latex . t)
     (maxima . t)
     (python . t)
     (lisp . t)
     (js . t)
     (perl . t)
     (scheme . t)))
 '(org-babel-python-command "python3")
 '(org-capture-templates
   '(("h" "Handoff" entry
      (file+headline "~/wrk/lab/fml/wiki/ref-handoffs.org" "INBOX")
      "** %U %?")
     ("w" "Writing" entry
      (file "~/Dropbox/org/writing.org")
      "* TODO %?")
     ("l" "Literature" entry
      (file "~/Dropbox/org-roam/Literature/inbox.org")
      "** TODO %?")
     ("i" "Inbox" entry
      (file "~/Dropbox/org/inbox.org")
      "* TODO %?")))
 '(org-confirm-babel-evaluate nil)
 '(org-download-image-attr-list '("#+ATTR_ORG: :width 700"))
 '(org-file-apps
   '((t . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\'" . default)))
 '(org-format-latex-options
   '(:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-hide-emphasis-markers t)
 '(org-hide-leading-stars t)
 '(org-image-actual-width '(300))
 '(org-link-frame-setup
   '((vm . vm-visit-folder-other-frame)
     (vm-imap . vm-visit-imap-folder-other-frame)
     (gnus . org-gnus-no-new-news)
     (file . find-file)
     (wl . wl-other-frame)))
 '(org-return-follows-link t)
 '(org-roam-directory "~/Work/Emacs/org-roam")
 '(org-roam-link-file-path-type 'absolute)
 '(org-sos-dir "/Users/vedwin/wrk/lab/org-sos/")
 '(org-src-tab-acts-natively nil)
 '(org-src-window-setup 'current-window)
 '(org-use-speed-commands t)
 '(package-selected-packages
   '(lsp-scheme sicp erc-colorize erc-youtube erc-tweet "znc" helm-notmuch elfeed-goodies elfeed-org elfeed notmuch-transient company-plsense ffmpeg-player elfeed-tube multi-vterm znc org-modern stumpwm-mode geiser-chicken geiser-guile geiser-mit geiser-racket xref helm-mu mu4e-alert alert log4e gntp mu4e-maildirs-extension pandoc-mode pandoc docker-tramp docker-cli docker erc-hl-nicks erc-image erc-social-graph erc-terminal-notifier erc-view-log erc-yt code-cells nose load-env-vars poetry pydoc pylookup sphinx-doc window-purpose imenu-list rustic cargo-transient yasnippet-classic-snippets walkman inf-clojure fennel-mode osc spaceline ox-json sly-asdf mvn meghanada maven-test-mode lsp-java cfrs toml-mode ron-mode racer rust-mode flycheck-rust cargo company-tabnine weyland-yutani-theme melancholy-theme flycheck evil-magit flycheck-golangci-lint 0blayout puppet-mode ob-http httpcode httprepl pepita vterm ox-slack toc-org ess-R-data-view ess lsp-julia julia-repl julia-mode insert-shebang flycheck-bashate fish-mode company-shell maxima flycheck-clj-kondo stickyfunc-enhance pippel pipenv importmagic epc ctable concurrent deferred helm-gtags helm-cscope xcscope ggtags evil-matchit counsel-gtags blacken geiser gitter org-roam-server vscode-dark-plus-theme wordnut twittering-mode sqlite3 org-roam emacsql-sqlite3 emacsql org-download deft dap-mode posframe lsp-treemacs bui treemacs pfuture godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc company-go go-mode groovy-imports pcache rainbow-mode rainbow-identifiers color-identifiers-mode tide typescript-mode import-js grizzl add-node-modules-path yasnippet-snippets lsp-ui lsp-python-ms lsp-pyright helm-lsp lsp-mode ht helm-company helm-c-yasnippet fuzzy flycheck-pos-tip pos-tip company-web web-completion-data company-anaconda company clojure-snippets auto-yasnippet ac-ispell slack org-ql org-bullets org-mind-map centaur-tabs logview yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode anaconda-mode pythonic f badger-theme svg terraform-mode kubernetes all-the-icons-dired dired-sidebar mmm-mode markdown-toc markdown-mode gh-md nginx-mode csv-mode web-beautify tern livid-mode skewer-mode json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc coffee-mode ac-helm projectile-ripgrep helm-rg web-mode tagedit slim-mode scss-mode sass-mode pug-mode helm-css-scss haml-mode emmet-mode shrface sly yaml-mode ox-gfm jsonnet-mode nov ac-slime dockerfile-mode groovy-mode edn org-mime notmuch clomacs s org-beautify-theme smeargle orgit org-plus-contrib magit-gitflow magit-popup helm-gitignore request gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link magit git-commit with-editor vscdark-theme atom-dark-theme ir-black-theme darktooth-theme ac-cider auto-complete nadvice lispy zoutline counsel iedit swiper ivy evil-visualstar evil undo-tree clj-refactor inflections multiple-cursors paredit yasnippet cider-eval-sexp-fu eval-sexp-fu cider sesman spinner queue parseedn clojure-mode parseclj a smartparens multi-term transient fringe-helper dash git-gutter diff-hl which-key use-package pcre2el macrostep hydra lv helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx flx helm-descbinds helm-ag exec-path-from-shell evil-escape goto-chg elisp-slime-nav diminish bind-map bind-key auto-compile packed ace-window ace-jump-helm-line helm avy helm-core popup async))
 '(python-shell-interpreter "python3")
 '(send-mail-function 'smtpmail-send-it)
 '(sh-mode-hook
   '(smartparens-mode spacemacs//shell-scripts-setup-backend spacemacs//setup-shell flycheck-bashate-setup spacemacs//init-jump-handlers-sh-mode))
 '(shell-file-name "/bin/zsh")
 '(smtpmail-smtp-server "mail.apple.com" t)
 '(smtpmail-smtp-service 25 t)
 '(twittering-use-master-password t)
 '(vterm-shell "/bin/zsh")
 '(warning-suppress-log-types '((use-package) (use-package) (use-package)))
 '(warning-suppress-types
   '((use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)
     (use-package)))
 '(yas-snippet-dirs '("~/.spacemacs.d/snippets")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cider-repl-stderr-face ((t (:inherit nil :foreground "MediumPurple3"))))
 '(cider-warning-highlight-face ((t (:inherit font-lock-warning-face :background "black" :underline "yellow"))))
 '(font-lock-comment-face ((t (:background "black" :foreground "#7C7C7C"))))
 '(font-lock-warning-face ((t (:background "black" :foreground "#FF6C60"))))
 '(helm-M-x-key ((t (:foreground "orange" :underline nil))))
 '(highlight ((t (:background "black" :foreground "#4db2ff" :underline t))))
 '(hl-line ((t (:extend t :background "gray6" :underline nil))))
 '(italic ((t (:underline nil))))
 '(lsp-headerline-breadcrumb-path-face ((t nil)))
 '(mode-line-buffer-id ((t (:inherit bold :foreground "#C6C5FE"))))
 '(org-block ((t (:background "black" :foreground "#b2b2b2"))))
 '(org-block-begin-line ((t (:extend t :background "gray4" :foreground "gray45"))))
 '(org-block-end-line ((t (:extend t :background "gray4" :foreground "gray45"))))
 '(term ((t (:foreground "#b2b2b2")))))
)
