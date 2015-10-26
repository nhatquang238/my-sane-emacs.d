;; remove menu-bar, tool-bar, scroll-bar
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; short answer to confirmation
(defalias 'yes-or-no-p 'y-or-n-p)

;; auto close bracket
;; (electric-pair-mode 1)

;; tab to complete, then indent
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

;; tab config
(setq-default indent-tabs-mode nil)
(custom-set-variables '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))
(setq-default tab-width 4)
