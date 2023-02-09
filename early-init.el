;; (setq package-enable-at-startup nil)
;; Package libraries initialization
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "https://elpa.gnu.org/packages/") t)
(if (version< emacs-version "27.0")
    (package-initialize))

;; List of packages to be installed
(defvar required-packages
  '(
    use-package
    switch-window
    smex
    projectile
    ido
    jedi
    flx-ido
    ido-vertical-mode
    auto-complete
    helm
    helm-swoop
    helm-ag
    undo-tree
    yasnippet
    aggressive-indent
    discover-my-major
    guide-key
    smart-mode-line
    helm-projectile
    ace-jump-mode
    linum-relative
    emmet-mode
    web-mode
    ws-butler
    js2-mode
    flycheck
    exec-path-from-shell
    react-snippets
    tern
    tern-auto-complete
    json-mode
    smartparens
    expand-region
    sql-indent
    whitespace-cleanup-mode
    haskell-mode
    haxe-mode
    sly
    rust-mode
    flycheck-rust
    s
    dash
    editorconfig
    ) "a list of packages to install at launch.")

(setq byte-compile-warnings '(cl-functions))
(require 'cl)

;; fn to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
  when (not (package-installed-p p)) do (return nil)
  finally (return t)
  )
)

;; install missing packages
(unless (packages-installed-p)
  ;; check for new packages
  (unless package-archive-contents
    (message "%s" "Emacs is refreshing its package db...")
    (package-refresh-contents)
    (message "%s" " done.")
    )

  ;; install missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p)
      )
    )
  )
;;;;
