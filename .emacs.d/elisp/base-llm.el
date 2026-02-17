;;; package --- LLM related configs -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(use-package gptel
    :bind ("C-\\" . gptel-send)
    :custom
    (gptel-model   'glm)
    (gptel-backend (gptel-make-openai "local"
                     :stream t
                     :protocol "http"
                     :host "localhost:1234")))

(provide 'base-llm)
;;; base-llm.el ends here
