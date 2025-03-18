;; syntax highlight of the latest C++ language.
(use-package modern-cpp-font-lock
  :delight)
(add-hook 'c++-mode-hook #'modern-c++-font-lock-mode)

 (provide 'compchem-modern-cpp-font-lock)

