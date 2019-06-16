(defun markdown-follow-at-point ()
    "Follow the link under the cursor leaving a marker behind"
    (interactive)
      ; Allows us to pop the marker stack to back track.
      (xref-push-marker-stack)
      (markdown-follow-link-at-point))

(use-package markdown-mode
  :config (setq-default markdown-hide-urls t)
  :bind (:map markdown-mode-map
              ("M-." . markdown-follow-at-point)))

(provide 'lang-markdown)
