(use-package rjsx-mode
  :mode ("\\.jsx?\\'" . rjsx-mode)
  :custom-face
  (js2-error   ((t (:inherit default :underscore nil))))
  (js2-warning ((t (:inherit default :underscore nil))))
  :config
  (define-key rjsx-mode-map "<" nil)
  (define-key rjsx-mode-map (kbd "C-d") nil)
  (define-key rjsx-mode-map ">" nil))
 
 (provide 'compchem-rjsx-mode)
