(use-package fish-completion
    :hook ((eshell-mode . fish-completion-mode)))
(use-package esh-autosuggest
  :hook ((eshell-mode . esh-autosuggest-mode)))

(use-package aweshell
  :straight '(aweshell :type git :host github :repo "manateelazycat/aweshell")
  :bind ([f11] . aweshell-new))

(provide 'base-shell)
