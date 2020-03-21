;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
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
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     haskell
     sql
     (auto-completion :variables
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t)
     vimscript
     emoji
     yaml
     lua
     markdown
     ruby
     go
     javascript
     html
     php
     python
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     org
     (shell :variables
             shell-default-height 30
             shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(all-the-icons
                                      doom-themes
                                      doom-modeline
                                      rjsx-mode
                                      flycheck
                                      ini-mode
                                      vala-mode
                                      writeroom-mode
                                      vue-mode
                                      editorconfig)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
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
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-one
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("MonofurForPowerline Nerd Font"
   ;; dotspacemacs-default-font '("Fira Code"
   ;; dotspacemacs-default-font '("AurulentSansMono Nerd Font"
   dotspacemacs-default-font '("FantasqueSansMono Nerd Font"
                               ;; :size 12
                               :size 14
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; dotspacemacs-default-font '("CodeNewRoman Nerd Font"
   ;;                             ;; :size 12
   ;;                             :size 14
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
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
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (add-to-list 'load-path "~/.emacs.d/custom-packages/")
  (add-to-list 'custom-theme-load-path "~/.emacs.d/custom-packages/emacs-doom-themes/themes/")
  ;; (add-to-list 'custom-theme-load-path "~/.emacs.d/custom-packages/emacs-doom-themes-original/themes/")

  ;; Fix for dwm tiling (I guess)
  (add-to-list
   'default-frame-alist
   '(fullscreen . maximized))

  (setq frame-resize-pixelwise 't)


  (setq-default line-spacing 8)
  (setq powerline-default-separator 'nil)

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq js-indent-level 2)

  (setq org-default-notes-file "~/Documents/todo.org")
  (setq org-todo-keywords
        '((sequence "TODO" "WAITING" "CONSIDERING" "IN-PROGRESS" "SOMEDAY" "DELAYED" "ABANDONED" "DONE")))
  (setq org-todo-keyword-faces
        '(("TODO" . (:foreground "#22ABF5"))
          ("WAITING" . (:foreground "#EBE84B" :weight "bold"))
          ("IN-PROGRESS" . (:foreground "#EBA84B" :weight "bold"))
          ("SOMEDAY" . (:foreground "#FFB0EF" :weight "bold"))
          ("DELAYED" . (:foreground "#FA1E1E" :weight "bold"))
          ("ABANDONED" . (:foreground "#824848" :weight "bold" :strike-through t ))
          ("DONE" . (:foreground "#4BEB6B" :weight "bold"))))

  (setq neo-hidden-regexp-list '("^\\." "\\.cs\\.meta$" "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "\\.o"))

  (add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

  (use-package editorconfig
    :ensure t
    :config
    (editorconfig-mode 1))

  (doom-themes-neotree-config)
  (doom-themes-org-config)

  (doom-modeline-init)
  (setq doom-modeline-bar-width 1)
  (setq doom-modeline-height 32)
  (setq doom-modeline-buffer-file-name-style 'file-name)
  (setq doom-modeline-persp-name nil)

  (setq tramp-default-method "ssh")

  (setq display-line-numbers-mode 't)
  (add-hook 'prog-mode-hook 'display-line-numbers-mode)

  (add-hook 'after-init-hook 'global-company-mode)
  (add-hook 'css-mode-hook 'rainbow-mode)
  (add-hook 'sh-mode-hook 'flycheck-mode)

  ;; (global-display-line-numbers-mode)

  ;; Rebind toggle folding to "f" in normal mode
  (define-key evil-normal-state-map "f" "za")

  (setq yas-snippet-dirs
        '("~/.emacs.d/snippets"))
  (yas-global-mode 1)
  ;; Don't use yasnippets in term mode
  (add-hook 'term-mode-hook (lambda ()
                              (yas-minor-mode -1)))

  ;; (spaceline-toggle-buffer-size-off)
  ;; (spaceline-toggle-minor-modes-off)
  ;; (spaceline-toggle-purpose-off)

  (setq backward-delete-char-untabify-method 'hungry)

  ;; WARNING: This will change your life
  ;; (OPTIONAL) Visualize tabs as a pipe character - "|"
  ;; This will also show trailing characters as they are useful to spot.
  (setq whitespace-style '(face tabs tab-mark trailing))
  (custom-set-faces
   '(whitespace-tab ((t (:foreground "#636363")))))
  (setq whitespace-display-mappings
        '((tab-mark 9 [124 9] [92 9]))) ; 124 is the ascii ID for '\|'
  (global-whitespace-mode) ; Enable whitespace mode everywhere
  )

(defalias 'zen-mode 'writeroom-mode)

(defun sudo-save()
  "Use TRAMP to open a file with write access using sudo."
  (interactive)
  (if (not buffer-file-name)
      (write-file (concat "/sudo:root@localhost:" (ido-read-file-name)))
    (write-file (concat "/sudo:root@localhost:" (buffer-file-name)))))


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "6f4a79f5378b8d2d364f8fabc7fd3223344f1456623cff9cc15663b1e8632b17" "56170042289fda942df82f445fad9279affb857363b6d84b1935c044cb333c33" "d67876b806b1f4f9bc2f8a0062cd7b65bfbf9373acfec213f4c18556e05b9c53" "4609dfdd9cfc97d7c965ed0bca83d45116a4731e37fb9b1cf59704b93d1737e1" "3bd07c323f90cfcfab3b40815417c2a4eed949491a61142a2a404ad6ab872fe4" "991edc3e2ae4026b2b5d9f73ea60e4e350cf3df65885e01e385125ee0e59c95d" "069d17859272c5c9f14ae92e6ba8a1017aaf87018b4d889c9470bbc6ccd2b175" "5c12b593be2007561c4745deb9709d3c0aaadcf4209fca72dce1f253a2c1dfa6" "a253b8f92ed1a77f179c1069c74cdcba2e62c428798c7f46062aa23efdb94ea1" "f4469be21de9e2b76148b49d46df0b4a70527d1dd20cc9a537ea56a7285125e3" "38c902b222a98a2d4efd935d9474e296841507de51b1261538ee08a37ae180d1" "9d9fda57c476672acd8c6efeb9dc801abea906634575ad2c7688d055878e69d6" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#5B6268" t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(package-selected-packages
   (quote
    (doom-outrun-electric-theme intero hlint-refactor hindent helm-hoogle haskell-snippets company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode doom-snazzy-theme jsx-mode ssass-mode vue-html-mode vue-mode doom-modeline sql-indent magit-todos vala-mode powerline pcre2el org-category-capture alert log4e gntp org-plus-contrib markdown-mode skewer-mode simple-httpd json-snatcher json-reformat multiple-cursors js2-mode hydra parent-mode projectile request haml-mode gitignore-mode pkg-info epl flx magit magit-popup git-commit ghub with-editor smartparens iedit anzu evil goto-chg highlight dash-functional go-mode inf-ruby bind-map bind-key yasnippet packed pythonic helm avy helm-core async popup f s php-mode writeroom-mode zencoding-mode ini-mode emoji-cheat-sheet-plus company-emoji company-quickhelp pos-tip helm-company helm-c-yasnippet fuzzy company-web web-completion-data company-tern company-statistics company-go company-anaconda auto-yasnippet ac-ispell auto-complete company yasnippet-snippets flycheck vimrc-mode dactyl-mode rjsx-mode tabbar doom-themes atom-one-dark-theme yapfify yaml-mode xterm-color ws-butler winum which-key web-mode web-beautify volatile-highlights vi-tilde-fringe uuidgen use-package toc-org tern tagedit spaceline smeargle slim-mode shell-pop scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe restart-emacs rbenv rake rainbow-delimiters pyvenv pytest pyenv-mode py-isort pug-mode popwin pip-requirements phpunit phpcbf php-extras php-auto-yasnippets persp-mode paradox orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets open-junk-file neotree multi-term move-text mmm-mode minitest markdown-toc magit-gitflow macrostep lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint json-mode js2-refactor js-doc indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-ag google-translate golden-ratio go-guru go-eldoc gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav editorconfig dumb-jump drupal-mode diminish define-word cython-mode column-enforce-mode coffee-mode clean-aindent-mode chruby bundler auto-highlight-symbol auto-compile anaconda-mode all-the-icons aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-tab ((t (:foreground "#636363")))))
