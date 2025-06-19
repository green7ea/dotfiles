(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package corfu
  :ensure t
  :init (corfu-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package savehist
  :straight (:type built-in)
  :hook (after-init . savehist-mode))

(use-package marginalia
  :ensure t
  :init (marginalia-mode))

(use-package consult
  :bind
  ("M-g g" . consult-goto-line)
  ("C-s" . consult-line)
  ("C-x b" . consult-buffer)
  :init
  (global-set-key [(f8)] 'consult-fd))

(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'base-completion)
