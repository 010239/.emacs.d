;;
;; https://www.emacswiki.org/emacs
;;
(set-language-environment 'utf-8)

;;
;; Adding a directory
;; https://www.emacswiki.org/emacs/LoadPath
;;
(add-to-list 'load-path "~/.emacs.d/lisp/")



;;(require 'init-package)
(require 'init-package-china)

(require 'init-edit)
(require 'init-ui)
(require 'init-org)
(require 'init-git)
(require 'init-projectile)

;; Restart Emacs
(use-package restart-emacs 
 :ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (restart-emacs magit counsel swiper ivy drag-stuff company use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
