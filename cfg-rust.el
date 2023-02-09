;;; cf-rust --- setup for rust related development
;;; Code:
(require 'rust-mode)
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

;;; cf-rust: ends here
