(use-package gptel
    :bind ("C-`" . gptel-send)
    :config
    (setq
     gptel-model   'test
     gptel-backend (gptel-make-openai "llama-cpp"
                     :stream t
                     :protocol "http"
                     :host "localhost:11434"
                     :models '(llama3.1))))

(provide 'base-llm)
