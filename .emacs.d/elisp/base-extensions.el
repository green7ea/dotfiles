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
  ("C-x C-f" . counsel-find-file)
  ("C-x c k" . counsel-yank-pop))

(use-package lsp-mode)

(use-package counsel-projectile)

(use-package vertico
  :ensure t
  :init (vertico-mode)
  :bind ("C-s" . swiper))

(use-package orderless
  :ensure t
  :init (icomplete-mode)
  :custom (completion-styles '(orderless)))

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

(use-package corfu
  :ensure t
  :init (corfu-mode))

(use-package deadgrep
  :defer t)

(use-package sudo-edit
  :defer t)

(use-package yaml-mode
  :defer t)

(use-package highlight-indentation
  :defer t)

(use-package ace-window
  :bind ("C-x o" . ace-window))

(use-package undo-fu
  :bind
  ("C-z" . undo-fu-only-undo)
  ("C-S-z" . undo-fu-only-redo))

(provide 'base-extensions)
