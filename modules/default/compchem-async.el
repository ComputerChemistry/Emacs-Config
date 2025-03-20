;; Install Package Async

;; Install the async package.

(use-package async
  :ensure t
  :config
  (autoload 'dired-async-mode "dired-async.el" nil t)
  (dired-async-mode 1))

(provide 'compchem-async)

;;; compchem-async.el ends here

