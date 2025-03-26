;;; clickhouse.el --- Utitlity to work with ClickHouse DB  -*- lexical-binding: t; -*-

;; Copyright (C) 2025 Emmanuel Boudreault

;; Author: Emmanuel Boudreault <emmanuel.boudreault@polymtl.ca>
;; Version: 0.1-pre
;; Package-Requires: ((plz "0.1"))

;;; Commentary:

;; This package lets you send basic queries to a running ClickHouse
;; DB.

(require 'plz)

(defgroup clickhouse nil
  "Send SQL queries to ClickHouse using HTTP."
  :prefix "clickhouse-"
  :group 'external)

(define-minor-mode clickhouse-mode
  "Easily interact with a clickhouse database."
  :lighter " CH"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-j") 'clickhouse-send-sql)
            map))

;;;; Customization

(defcustom clickhouse-url "http://fms-205.incubed.local:8123" ; "http://localhost:8123"
  "The ClickHouse server URL."
  :type 'string)

;;;; Commands

(defun clickhouse-send-sql ()
  "Send SQL command before cursor to ClickHouse."
  (interactive)
  (clickhouse-send (clickhouse-select-paragraph)))

;;;; Functions

;;;;; Private

(defun clickhouse-send (sql)
  "Send SQL command SQL to ClickHouse."
  (plz 'post clickhouse-url
    :body sql
    :then #'clickhouse-show-resonse
    :else #'clickhouse-show-error))

(defun clickhouse-show-resonse (response)
  (let ((result-buffer (get-buffer-create "*clickhouse*")))
    (with-current-buffer result-buffer
      (erase-buffer)
      (insert response)
      (insert "\n\n"))
    (display-buffer result-buffer)))

(defun clickhouse-show-error (error)
  (let ((error-buffer (get-buffer-create "*clickhouse-error*")))
    (with-current-buffer error-buffer)
    (insert error)))

(defun clickhouse-select-paragraph ()
  (let ((start (save-excursion (backward-paragraph) (point)))
        (end (save-excursion (forward-paragraph) (point))))
    (string-trim (buffer-substring-no-properties start end))))

(provide 'clickhouse)

;;; clickhouse.el ends here
