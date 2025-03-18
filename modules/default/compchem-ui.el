;; Configuración del tamaño y posición de la ventana
(setq initial-frame-alist
      '((top . 0)     ;; Posición desde la parte superior de la pantalla
        (left . 0)    ;; Posición desde el borde izquierdo de la pantalla
        (width . 120) ;; Ancho de la ventana en columnas
        (height . 35))) ;; Alto de la ventana en líneas


 (delete-selection-mode 1)    ;; You can select text and delete it by typing.
 (electric-indent-mode -1)    ;; Turn off the weird indenting that Emacs does by default.
 (electric-pair-mode 1)       ;; Turns on automatic parens pairing

 (menu-bar-mode -1)
 (tool-bar-mode -1)
 (scroll-bar-mode -1)


 (menu-bar-mode -1)           ;; Disable the menu bar 
 (scroll-bar-mode -1)         ;; Disable the scroll bar
 (tool-bar-mode -1)           ;; Disable the tool bar


 ;;line numbers
 (global-display-line-numbers-mode 1)
 (setq display-line-numbers-type 'relative) 
 

 (provide 'compchem-ui)
