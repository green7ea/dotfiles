(use-package which-key
  :init (which-key-mode))

(use-package windmove
  :bind
  ("C-c n" . windmove-left)
  ("C-c e" . windmove-down)
  ("C-c i" . windmove-up)
  ("C-c o" . windmove-right))

(use-package deadgrep
  :defer t)

(use-package sudo-edit
  :defer t)

(use-package undo-fu
  :bind
  ("C-z" . undo-fu-only-undo)
  ("C-S-z" . undo-fu-only-redo))

(use-package autorevert
  :straight nil
  :custom
  (global-revert-check-vc-info t)
  :config
  (global-auto-revert-mode +1))

(use-package olivetti
  :defer t
  :custom
  (olivetti-body-width 80))

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'base-extensions)
