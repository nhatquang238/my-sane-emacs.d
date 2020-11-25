;;; Code:
(add-hook 'haxe-mode-hook
          (function
           (lambda ()
             (setq c-basic-offset 4)
             )))
(add-to-list 'ac-modes 'haxe-mode)

(provide 'cfg-haxe)
;;; cfg-haxe end here
