(load "~/.emacs.d/my-loadpackages.el")

(add-hook 'after-init-hook '(lambda ()
                  (load "~/.emacs.d/my-noexternals.el")
                  (load "~/.emacs.d/my-key-bindings.el")
                  (load "~/.emacs.d/my-autostart-mode.el")
                  ))
