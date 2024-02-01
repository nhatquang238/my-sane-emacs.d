;; cf-copilot --- setup for copilot related development
;; Code:
(add-to-list 'load-path (expand-file-name "~/.emacs.d/copilot.el") t)
(require 'copilot)

(setq copilot-node-executable "/Users/cocoon/.nvm/versions/node/v18.13.0/bin/node")
(add-hook 'prog-mode-hook 'copilot-mode)

;; complete by copilot first, then auto-complete
(defun my-tab ()
  (interactive)
  (or (copilot-accept-completion)
      (ac-expand nil)))

(with-eval-after-load 'auto-complete
  ;; disable inline preview
  (setq ac-disable-inline t)
  ;; show menu if have only one candidate
  (setq ac-candidate-menu-min 0))

(define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)
(define-key copilot-completion-map (kbd "TAB") 'copilot-accept-completion)
(define-key copilot-completion-map (kbd "ESC") 'copilot-clear-overlay)
;; cf-copilot: ends here
