;;; package --- Nicer completion -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(use-package vertico
  :ensure t
  :init (vertico-mode))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :ensure t
  :init (marginalia-mode))

(use-package prescient
  :ensure t)

(use-package embark
  :ensure t
  :bind
  ("<f1>" . embark-act))

(use-package corfu
  :ensure t
  :init (corfu-mode))

(use-package consult
  :bind
  ("M-g M-g" . consult-goto-line)
  ("C-s" . consult-line)
  ("C-x b" . consult-buffer)
  :init
  (global-set-key [(f8)] 'consult-fd))

(provide 'base-completion)
;;; base-completion.el ends here
