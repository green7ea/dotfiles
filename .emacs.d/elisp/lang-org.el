(defun org-follow-at-point ()
  "Follows the link under the cursor, leaving a marker behing."
  (interactive)
  (xref-push-marker-stack)
  (org-open-at-point))

(setq org-link-frame-setup
      '((vm . vm-visit-folder-other-frame)
        (vm-imap . vm-visit-imap-folder-other-frame)
        (gnus . org-gnus-no-new-news)
        (file . find-file)
        (wl . wl-other-frame)))

; (define-key 'org-mode-map "M-." 'org-follow-at-point)

(provide 'lang-org)
