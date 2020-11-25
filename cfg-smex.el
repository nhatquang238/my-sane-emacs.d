;;; smex --- smarter M-x through ido, tracking most used commands
;;; Code:
(use-package smex
  :ensure t
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands))
  :config (smex-initialize)
)
;;; smex: ends here
