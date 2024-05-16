(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package expand-region
  :bind
  ("M-s" . er/expand-region))

(use-package counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x)
  ("C-x C-f" . counsel-find-file))

(use-package lsp-mode)

(use-package vertico
  :ensure t
  :init (vertico-mode)
  :bind ("C-s" . swiper))

(use-package magit)

(use-package ranger
  :bind (:map ranger-mode-map
              ("n" . ranger-up-directory)
              ("e" . ranger-next-file)
              ("i" . ranger-prev-file)
              ("o" . ranger-find-file))
  :init
  (ranger-override-dired-mode t))

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

(use-package ace-window)

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

(provide 'base-extensions)
