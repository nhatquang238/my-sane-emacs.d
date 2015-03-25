;;;; Coffeescript
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 4)
 '(custom-safe-themes (quote ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))))

;;;; Load package library
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;;; tmux like switch
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)

;;;; Python autocomplete
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;;; Lisp Autocomplete
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(defalias 'yes-or-no-p 'y-or-n-p)
(electric-pair-mode 1)

(add-to-list 'load-path "~/emacs-packages/ac-coffee/")
(require 'ac-coffee)

;;;; smex
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; Old M-x
(global-set-key (kbd "C-c C-x M-x") 'execute-extended-command)

;;;; projectile
(require 'projectile)
(projectile-global-mode)
(setq projectile-enable-caching t)

;;;; flx support for ido
(require 'ido)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq flx-ido-use-faces nil)
;; (require 'find-file-in-repository)
;; (require 'ido-ubiquitous)
;; (global-set-key (kbd "C-x f") 'find-file-in-repository)
;; (ido-ubiquitous-mode 1)

;;;; Color formatting ido-vertical-mode
(require 'ido-vertical-mode)
(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-first-match-face nil
                    :background "green"
		    :foreground "white")
(set-face-attribute 'ido-vertical-only-match-face nil
		    :background "green"
                    :foreground "white")
(set-face-attribute 'ido-vertical-match-face nil
                    :foreground "orange")
(ido-vertical-mode 1)

;;;; Shortcuts
(global-set-key (kbd "C-c d") 'kill-whole-line)
(global-set-key (kbd "C-x f") 'projectile-find-file)

;;;; Autocomplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;;;; smart-mode-line
(sml/setup)
(sml/apply-theme 'light)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;; Helm
(require 'helm)
(require 'helm-swoop)
;; Change the keybinds to whatever you like :)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)
;; Optional face for line numbers
;; Face name is `helm-swoop-line-number-face`
(setq helm-swoop-use-line-number-face t)

(nyan-mode 1)
