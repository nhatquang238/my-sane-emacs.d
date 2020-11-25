;; Built-in
(global-set-key (kbd "C-M-b") 'scroll-other-window-down)
;; wind-move
(global-set-key (kbd "C-x n") 'windmove-right)
(global-set-key (kbd "C-x p") 'windmove-left)
;; helm
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "C-c M-i") 'helm-ag-project-root)
;; ace-jump-mode
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
;; the horrible hs-minor-mode
(global-set-key (kbd "C-c _") 'hs-hide-level)
(global-set-key (kbd "C-c -") 'hs-hide-block)
(global-set-key (kbd "C-c =") 'hs-show-block)
;; navigate to beginning and end of expression
(global-set-key (kbd "C-M-a") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-M-e") 'sp-end-of-sexp)
(global-set-key (kbd "C-M-k") 'sp-kill-sexp)
;; expand-region
(global-set-key (kbd "C-M-w") 'er/expand-region)
