(use-package languagetool
  :ensure t
  :defer t
  :bind (:map languagetool-server-mode
              ("M-RET" . languagetool-correct-at-point))
  :commands (languagetool-check
             languagetool-clear-suggestions
             languagetool-correct-at-point
             languagetool-correct-buffer
             languagetool-set-language
             languagetool-server-mode
             languagetool-server-start
             languagetool-server-stop)
  :config
  (setq languagetool-java-arguments '("-Dfile.encoding=UTF-8")
        languagetool-server-url "localhost"
        languagetool-server-port 8081))

(provide 'base-langtool)
