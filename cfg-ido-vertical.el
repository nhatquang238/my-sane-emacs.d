(require 'ido-vertical-mode)
(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-first-match-face nil
                    :background "green"
                    :foreground "white")
(set-face-attribute 'ido-vertical-only-match-face nil
                    :background "green"
                    :foreground "white")
(set-face-attribute 'ido-vertical-match-face nil
                    :foreground "orange")
(ido-vertical-mode 1)
