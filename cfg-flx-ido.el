(require 'ido)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t)
(setq flx-ido-use-faces nil)

(add-hook 'ido-setup-hook 'ido-my-keys)
(defun ido-my-keys ()
  "Add my keybindings for Ido"
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
  )
