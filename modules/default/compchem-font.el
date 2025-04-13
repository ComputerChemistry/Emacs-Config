
(set-face-attribute 'default nil
  :font "Iosevka"
  :height 120)
 ;; :weight 'regular)
 (set-face-attribute 'variable-pitch nil
  :font "Iosevka"
  :height 120)
 ;; :weight 'regular)
(set-face-attribute 'fixed-pitch nil
  :font "Iosevka"
  :height 120)
 ;; :weight 'regular)
;; Makes commented text and keywords italics.
;; This is working in emacsclient but not emacs.
;; Your font must have an italic face available.
(set-face-attribute 'font-lock-comment-face nil
  :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
  :slant 'italic)

;; This sets the default font on all graphical frames created after restarting Emacs.
;; Does the same thing as 'set-face-attribute default' above, but emacsclient fonts
;; are not right unless I also add this method of setting the default font.
;;(add-to-list 'default-frame-alist '(font . "SauceCodePro Nerd Font-10"))
(setq-default line-spacing 0.20)

;;Uncomment the following line if line spacing needs adjusting.
;;(setq-default line-spacing 0.20)


;; Márgenes en los lados
(setq-default left-margin-width 4)  ;; Márgenes laterales más cómodos
(setq-default right-margin-width 4) ;; Márgenes laterales más cómodos

(set-window-buffer nil (current-buffer))

(add-to-list 'default-frame-alist '(font . "Iosevka-12"))  ;; Fuente para emacsclient
(global-font-lock-mode 1)    

 (provide 'compchem-font)

  ;;; compchem-font.el ends here
