;;; projectile --- managing any git project
;;; Code:
(use-package projectile
  :ensure t
  :init (setq projectile-enable-caching t)
  :bind (:map projectile-mode-map
              ("C-x f" . projectile-find-file))
  :bind-keymap (("C-c p" . projectile-command-map))
  :config (projectile-mode)
)
;;; projectile: ends here
