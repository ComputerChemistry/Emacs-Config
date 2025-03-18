;;(require 'org)
;;(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

;;:org-babel-load-file
;; (expand-file-name
;;  "config.org"
;;  user-emacs-directory)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right
)
(add-to-list 'load-path "~/.config/emacs/org-mode/lisp") ; Ajusta la ruta de acceso según sea necesario
;;(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
(require 'org-compat)
(load "org-compat")
(load "org-macs"
)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1))))


 ;; The following prevents <> from auto-pairing when electric-pair-mode is on.
;; Otherwise, org-tempo is broken when you try to <s TAB...
(add-hook 'org-mode-hook (lambda ()
           (setq-local electric-pair-inhibit-predicate
                   `(lambda (c)
                  (if (char-equal c ?<) t (,electric-pair-inhibit-predicate c))))))
(global-auto-revert-mode t)  ;; Automatically show changes if the file has changed
;;(global-display-line-numbers-mode 1) ;;Display Line Numbers
;;(global-visual-line-mode t)  ;; Enable truncated lines

(setq org-edit-src-content-indentation 0) ;; Set src block automatic indent to 0 instead of 2.

(add-hook 'org-mode-hook 'org-indent-mode)
(use-package org-bullets
 :ensure t)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(eval-after-load 'org-indent '(diminish 'org-indent-mode))

(require 'org-tempo)

(provide 'compchem-org-mode)
