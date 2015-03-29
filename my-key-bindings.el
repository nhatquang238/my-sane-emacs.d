;; Built-in
(global-set-key (kbd "C-c d") 'kill-whole-line)
(global-set-key (kbd "C-c C-x M-x") 'execute-extended-command) ;; old M-x
(global-set-key (kbd "C-M-b") 'scroll-other-window-down)
;; projectile
(global-set-key (kbd "C-x f") 'projectile-find-file)
;; switch-window
(global-set-key (kbd "C-x o") 'switch-window)
;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; helm
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
