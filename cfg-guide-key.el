;;; guide-key --- pop up to display all keybindings for specific shortcut
;;; Code:
(use-package guide-key
  :ensure t
  :init
  (setq guide-key/guide-key-sequence t)
  (setq guide-key/idle-delay 1)
  :config
  (guide-key-mode 1)
)
;;; guide-key: ends here
