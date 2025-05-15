;; =================================
;; Configuración de Org con Elpaca
;; =================================

(use-package org
  :defer nil
  :hook ((org-mode . org-indent-mode)
         (org-mode . visual-line-mode))
  :config
  (setq org-edit-src-content-indentation 0)

  ;; Desactiva pairing de < para plantillas
  (add-hook 'org-mode-hook
            (lambda ()
              (setq-local electric-pair-inhibit-predicate
                          (lambda (c)
                            (if (char-equal c ?<)
                                t
                              (electric-pair-default-inhibit c))))))

  (require 'org-tempo)

  (custom-set-faces
   '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
   '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
   '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
   '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
   '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
   '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
   '(org-level-7 ((t (:inherit outline-5 :height 1.1))))))

(use-package org-superstar
  :ensure t 
  :hook (org-mode . org-superstar-mode)
  :config
  (setq org-superstar-headline-bullets-list '("●" "○" "◆" "▶"))
  (setq org-hide-leading-stars t))


(use-package compat
  :ensure t)


(use-package org-drill
  :ensure t
  :after org
  :config
  ;; Solo activa esta variable si está definida, para evitar errores
  (when (boundp 'org-drill-add-cloze-fontification)
    (setq org-drill-add-cloze-fontification t)))


(provide 'compchem-org-mode)
