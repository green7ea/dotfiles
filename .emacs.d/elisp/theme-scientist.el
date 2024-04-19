; Critical face is for information that requires immediate action.
;
; It should be of high constrast when compared to other faces. This
; can be realized (for example) by setting an intense background
; color, typically a shade of red. It must be used scarcely.

; Popout face is used for information that needs attention.
;
; To achieve such effect, the hue of the face has to be sufficiently
; different from other faces such that it attracts attention through
; the popout effect.

; Strong face is used for information of a structural nature.
;
; It has to be the same color as the default color and only the weight
; differs by one level (e.g., light/regular or regular/bold). IT is
; generally used for titles, keywords, directory, etc.

; Salient face is used for information that are important.
;
; To suggest the information is of the same nature but important, the
; face uses a different hue with approximately the same intensity as
; the default face. This is typically used for links.

; Faded face is for information that are less important.
;
; It is made by using the same hue as the default but with a lesser
; intensity than the default. It can be used for comments, secondary
; information and also replace italic (which is generally abused
; anyway

; Subtle face is used to suggest a physical area on the screen.
;
; It is important to not disturb too strongly the reading of
; information and this can be made by setting a very light background
; color that is barely perceptible.

(defconst scientist-colors
  '((foreground . "#b6c4d1")
    (background . "#212121")
    (dark-background   . "#111111")
    (red-background        . "#650b00")

    (blue       . "#7fc9f6")
    (red        . "#d52b00")
    (yellow     . "#fff159")
    (beige      . "#fff9ca")
    (blue       . "#2c5ba8")
    (peach      . "#ffa887")
    (orange     . "#ffa84e")
    (green      . "#b3ca6f")

    (black      . "#000000")
    (white      . "#ffffff")))

(defun scientist-color (name)
  (cdr (assoc name scientist-colors)))

(defun nano-theme-set-scientist ()
  "Apply dark Nano theme base."
  (interactive)
  (setq frame-background-mode 'dark)
  (setq nano-color-foreground (scientist-color 'foreground))
  (setq nano-color-critical   (scientist-color 'red-background))     ; keywords
  (setq nano-color-popout     (scientist-color 'green))   ; strings
  (setq nano-color-strong     (scientist-color 'peach))   ; header
  (setq nano-color-salient    (scientist-color 'blue))    ; filename
  (setq nano-color-faded      (scientist-color 'blue))
  (setq nano-color-subtle     (scientist-color 'dark-background))   ; highlight

  (setq nano-color-background (scientist-color 'background))
  (setq nano-color-highlight  (scientist-color 'black))   ; unsaved

  ;; to allow for toggling of the themes.
  (setq nano-theme-var "dark")

  (nano-refresh-theme))

(provide 'theme-scientist)
