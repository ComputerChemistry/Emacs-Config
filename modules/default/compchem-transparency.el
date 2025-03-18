;; TRUE Transparency
;;(set-frame-parameter nil 'alpha 100) ; For current frame
;;(add-to-list 'default-frame-alist '(alpha . 100)) ; For all new frames henceforth

;;Transparency
 ;; Configuración de transparencia para nuevas ventanas
(add-to-list 'default-frame-alist '(alpha . (85 . 70)))

;; Configurar transparencia también para nuevas ventanas (si las abres después)
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (set-frame-parameter frame 'alpha '(85 . 70))))

 ;;(defun kb/toggle-window-transparency ()
;;  "Toggle transparency."
;;  (interactive)
;;  (let ((alpha-transparency 100))
;;    (pcase (frame-parameter nil 'alpha)
;;      (100 (set-frame-parameter nil 'alpha 85)) ; Change to desired value
;;     ( _ (set-frame-parameter nil 'alpha 100)))))

 (add-to-list 'default-frame-alist '(alpha-background . 100)) ; For all new frames henceforth

;; Set transparency of emacs
;;(defun transparency (value)
;; Sets the transparency of the frame window. 0=transparent/100=opaque
;;  (interactive "Transparency Value 0 - 100 opaque:")
;;  (set-frame-parameter (selected-frame) 'alpha value))


;; TRUE Transparency
(set-frame-parameter nil 'alpha 100) ; For current frame
(add-to-list 'default-frame-alist '(alpha . 100)) ; For all new frames henceforth

(defun kb/toggle-window-transparency ()
  "Toggle transparency."
  (interactive)
  (let ((alpha-transparency 100))
    (pcase (frame-parameter nil 'alpha)
      (100 (set-frame-parameter nil 'alpha 85)) ; Change to desired value
      ( _ (set-frame-parameter nil 'alpha 100)))))


;; Set transparency of emacs
(defun transparency (value)
;; Sets the transparency of the frame window. 0=transparent/100=opaque
  (interactive "Transparency Value 0 - 100 opaque:")
  (set-frame-parameter (selected-frame) 'alpha value))
 
  (provide 'compchem-transparency)
