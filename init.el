;;;; Some weird shit for coffeescript setup
;; This must be put on top for it to work
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(package-selected-packages
   (quote
    (whitespace-cleanup-mode ws-butler web-mode undo-tree tern-auto-complete switch-window sql-indent smex smartparens smart-mode-line react-snippets nyan-mode linum-relative json-mode jedi ido-vertical-mode helm-swoop helm-projectile helm-ag guide-key flycheck flx-ido expand-region exec-path-from-shell evil-nerd-commenter emmet-mode discover-my-major aggressive-indent ace-jump-mode ac-js2)))
 '(tab-stop-list
   (quote
    (2 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))))

(load "~/.emacs.d/my-loadpackages.el")

(add-hook 'after-init-hook '(lambda ()
                  (load "~/.emacs.d/my-noexternals.el")
                  (load "~/.emacs.d/my-key-bindings.el")
                  (load "~/.emacs.d/my-autostart-mode.el")
                  ))




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
