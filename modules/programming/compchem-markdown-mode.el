
(use-package markdown-mode
  :ensure t
  :hook (markdown-mode . auto-fill-mode)
  :custom-face
  (markdown-code-face ((t (:background unspecified :inherit lsp-ui-doc-background)))))

 (provide 'compchem-markdown-mode)
