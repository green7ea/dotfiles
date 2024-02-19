(define-derived-mode typescriptreact-mode typescript-ts-mode "TypescriptReact"
  "A major mode for tsx.")

(use-package typescript-ts-mode
  :mode (("\\.ts$" . typescript-ts-mode)
         ("\\.tsx$" . typescriptreact-mode))
  :hook ((typescript-ts-mode . eglot-ensure))
  :bind (:map typescript-ts-mode-map
              ("M-RET" . eglot-code-action)
              ; ([f1] . lsp-find-reference)
              ([f2] . eglot-rename)
              ; ([f5] . lsp-treemacs-error-list)
              ([f6] . eglot-format-buffer))
  :init
  (setq typescript-indent-level 2))

(provide 'lang-typescript)
