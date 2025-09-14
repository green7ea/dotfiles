;;; package --- Do this before anything else to speed up startup -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(setq read-process-output-max (* 1024 1024))

(setq package-enable-at-startup nil)
(setq site-run-file nil)
(menu-bar-mode -1)

(when (tool-bar-mode)
  (tool-bar-mode -1))
(when (scroll-bar-mode)
  (scroll-bar-mode -1))

(unless (and (display-graphic-p) (eq system-type 'darwin))
  (push '(menu-bar-lines . 0) default-frame-alist))
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(setq default-frame-alist '((undecorated . t)))
;;; early-init.el ends here
