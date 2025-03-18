;; syntax highlight of the latest C++ language.
(use-package cpp-auto-include 
  :bind (:map c++-mode-map ("C-c i" . cpp-auto-include/ensure-includes-for-file)))

(add-to-list 'auto-mode-alist '("\\.tpp\\'" . c++-mode))

  (provide 'compchem-cpp-auto-include)
