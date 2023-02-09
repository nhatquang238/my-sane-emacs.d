(load "~/.emacs.d/my-loadpackages.el")

(add-hook 'after-init-hook '(lambda ()
                  (load "~/.emacs.d/my-noexternals.el")
                  (load "~/.emacs.d/my-key-bindings.el")
                  (load "~/.emacs.d/my-autostart-mode.el")
                  ))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ido-grid-mode geiser-mit geiser haxe-mode haskell-mode whitespace-cleanup-mode sql-indent expand-region smartparens json-mode tern-auto-complete tern react-snippets exec-path-from-shell flycheck js2-mode ws-butler web-mode emmet-mode linum-relative ace-jump-mode helm-projectile smart-mode-line guide-key discover-my-major aggressive-indent yasnippet undo-tree helm-ag helm-swoop helm ido-vertical-mode flx-ido jedi projectile smex switch-window use-package))
 '(warning-suppress-types '((emacs))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
