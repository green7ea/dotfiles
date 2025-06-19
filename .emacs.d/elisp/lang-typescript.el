(use-package typescript-ts-mode
  :straight (:type built-in)
  :mode (("\\.ts$" . typescript-ts-mode)
         ("\\.tsx$" . tsx-ts-mode))
  :hook ((typescript-ts-mode . eglot-ensure)
         (tsx-ts-mode . eglot-ensure)))

(provide 'lang-typescript)
;;; lang-typescript.el ends here
