;;; Code:
(require 'highlight-chars)
(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
(add-hook 'font-lock-mode-hook 'hc-highlight-trailing-whitespace)

(provide 'cfg-highlight-chars)
;;; cfg-highlight-chars.el ends here
