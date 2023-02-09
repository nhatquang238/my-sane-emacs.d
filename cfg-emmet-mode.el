(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook
          (lambda () (setq emmet-preview-default nil)))
(setq web-mode-engines-alist
      '(("django" . "\\.html\\'"))
      )
