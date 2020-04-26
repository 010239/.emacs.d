;;
;; https://pawelbx.github.io/emacs-theme-gallery/
;;

;; https://github.com/bbatsov/zenburn-emacs
(use-package zenburn-theme
  :ensure t
  :config
  ;;(setq zenburn-override-colors-alist
  ;;    '(("zenburn-bg+05" . "#282828")
  ;;      ("zenburn-bg+1"  . "#2F2F2F")
  ;;      ("zenburn-bg+2"  . "#3F3F3F")
  ;;      ("zenburn-bg+3"  . "#4F4F4F"))) ;To see the full list of color names you can override, consult the zenburn-theme.el source file.To see the full list of color names you can override, consult the zenburn-theme.el source file.
  (load-theme 'zenburn t))


(when (display-graphic-p)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))

(provide 'init-ui)
