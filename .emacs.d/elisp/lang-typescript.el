(use-package tide
  :mode (("\\.ts$" . typescript-ts-mode)
         ("\\.tsx$" . tsx-ts-mode))
  :init (keymap-global-unset "M-<return>")
  :after (company flycheck)
  :hook ((typescript-ts-mode . tide-setup)
         (tsx-ts-mode . tide-setup)
         (typescript-ts-mode . tide-hl-identifier-mode))
  :bind (:map tide-mode-map
              ("M-RET" . tide-fix)
              ([f1] . tide-references)
              ([f2] . tide-rename-symbol)))

(provide 'lang-typescript)
