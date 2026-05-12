;;; package --- Do this before anything else to speed up startup -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:
(setq read-process-output-max (* 1024 1024))

(setq package-enable-at-startup nil)
(setq site-run-file nil)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(unless (and (display-graphic-p) (eq system-type 'darwin))
  (push '(menu-bar-lines . 0) default-frame-alist))
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)
(setq default-frame-alist '((undecorated . t)))

;; Display the architecture using:
;;   gcc -march=native -Q --help=target | grep march
;;
;; The above command asks the compiler to resolve native for your current CPU
;; and display the resulting target. For example, if the output shows
;; -march=skylake, you know that skylake is the identifier you should pass to
;; -mtune and -march.
(defvar my-cpu-architecture "znver5")

;; `native-comp-compiler-options' specifies flags passed directly to the C
;; compiler (for example, GCC) when compiling the Lisp-to-C output
;; produced by the native compilation process. These flags affect code
;; generation, optimization, and debugging information.
(setq native-comp-compiler-options '("-O2"
                                     "-g0"
                                     "-fno-omit-frame-pointer"
                                     "-fno-finite-math-only"))

;; `native-comp-driver-options' specifies additional flags passed to the native
;; compilation driver process, which may invoke the compiler and linker with
;; certain parameters.
(setq native-comp-driver-options `(,(format "-mtune=%s" my-cpu-architecture)
                                   ,(format "-march=%s" my-cpu-architecture)))

;;; early-init.el ends here
