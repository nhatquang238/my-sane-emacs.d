;;; cfg-exec-path-from-shell: config emacs on mac os
;;; Code:
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))
;;; cfg-exec-path-from-shell: ends here
