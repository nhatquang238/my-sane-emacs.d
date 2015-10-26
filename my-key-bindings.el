;; Built-in
(global-set-key (kbd "C-c d") 'kill-whole-line)
(global-set-key (kbd "C-c C-x M-x") 'execute-extended-command) ;; old M-x
(global-set-key (kbd "C-M-b") 'scroll-other-window-down)
;; projectile
(global-set-key (kbd "C-x f") 'projectile-find-file)
;; switch-window
(global-set-key (kbd "C-x o") 'switch-window)
;; wind-move
(global-set-key (kbd "C-x n") 'windmove-right)
(global-set-key (kbd "C-x p") 'windmove-left)
;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; helm
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
(global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
(global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)
;; ace-jump-mode
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
;; the horrible hs-minor-mode
(global-set-key (kbd "C-c C-s C-h") 'hs-hide-block)
(global-set-key (kbd "C-c C-s C-s") 'hs-show-block)
;; navigate to beginning and end of expression
(global-set-key (kbd "C-M-a") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-M-e") 'sp-end-of-sexp)
(global-set-key (kbd "C-M-k") 'sp-kill-sexp)
