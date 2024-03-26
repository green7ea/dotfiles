(use-package python-mode
  :mode (("\\.py$" . python-mode))
  :hook ((python-mode . eglot-ensure))
  :bind (:map python-ts-mode-map
              ("M-RET" . eglot-code-action)
              ; ([f1] . lsp-find-reference)
              ([f2] . eglot-rename)
              ; ([f5] . lsp-treemacs-error-list)
              ([f6] . eglot-format-buffer)))

(provide 'lang-python)
