(use-package typescript-ts-mode
  :mode (("\\.ts$" . typescript-ts-mode)
         ("\\.tsx$" . typescript-ts-mode))
  :hook ((typescript-ts-mode . lsp-mode))
  :bind (:map typescript-ts-mode-map
              ;("M-RET" . tide-fix)
              ([f1] . lsp-find-reference)
              ([f2] . lsp-rename)
              ([f5] . lsp-treemacs-error-list)
              ([f6] . lsp-format-buffer))
  :init
  (setq typescript-indent-level 2))

(provide 'lang-typescript)
