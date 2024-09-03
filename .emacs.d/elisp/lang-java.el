(use-package lsp-java
  :bind
  ("M-RET" . tide-fix)
  ([f1] . lsp-find-references)
  ([f2] . lsp-rename))

(provide 'lang-java)
