;; Package libraries initialization
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "https://elpa.gnu.org/packages/") t)
(package-initialize)

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
    evil-nerd-commenter
    smart-mode-line
    helm-projectile
    ace-jump-mode
    linum-relative
    emmet-mode
    web-mode
    ws-butler
    js2-mode
    ac-js2
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
    ) "a list of packages to install at launch.")

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
  (message "%s" "Emacs is not refreshing its package db...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p)
      )
    )
  )
;;;;
