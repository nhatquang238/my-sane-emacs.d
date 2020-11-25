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
(setq-default tab-width 4)
(add-hook 'write-file-hooks
          (lambda () (if (not indent-tabs-mode)
                         (untabify (point-min) (point-max)))
            nil ))
