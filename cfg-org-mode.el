(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftright-final-hook 'windmove-right)

(setq org-replace-disputed-keys t)
(setq org-use-extra-keys t)

(define-key input-decode-map "\e[1;10A" [M-S-up])
(define-key input-decode-map "\e[1;10B" [M-S-down])
(define-key input-decode-map "\e[1;10C" [M-S-right])
(define-key input-decode-map "\e[1;10D" [M-S-left])

(define-key input-decode-map "\e[1;3A" [M-up])
(define-key input-decode-map "\e[1;3B" [M-down])
(define-key input-decode-map "\e[1;3C" [M-right])
(define-key input-decode-map "\e[1;3D" [M-left])
