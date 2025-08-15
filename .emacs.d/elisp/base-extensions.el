(use-package magit)

(use-package which-key
  :init (which-key-mode))

(use-package git-timemachine
  :defer t)

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

(use-package treesit-auto
  :demand t
  :config
  (global-treesit-auto-mode))

(use-package flycheck
  :config (global-flycheck-mode +1))

(use-package just-mode)

(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

(provide 'base-extensions)
