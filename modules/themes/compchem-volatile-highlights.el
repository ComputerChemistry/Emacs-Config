(use-package volatile-highlights
  :ensure t 
  :diminish
  :commands volatile-highlights-mode
  :hook (after-init . volatile-highlights-mode)
  :custom-face
  (vhl/default-face ((nil (:foreground "#FF3333" :background "BlanchedAlmond")))))

;; Configuración de color para la cara 'highlight'
(set-face-attribute 'highlight nil
                    :underline t
                    :foreground 'unspecified  ;; Aquí se usa 'unspecified' en lugar de nil
                    :background "#3e4446")

 (provide 'compchem-volatile-highlights)
