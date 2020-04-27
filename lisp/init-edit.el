;;
;; http://company-mode.github.io/
;;
(use-package company
  :ensure t
  :config
  (global-company-mode t)
  (setq company-idle-delay 0)
  )

;;
;; https://github.com/cabins/.emacs.d/blob/dev/lisp/init-misc.el
;; https://github.com/cabins/.emacs.d/blob/dev/lisp/init-misc.el
;;
(use-package electric
  :ensure t
  :hook ((after-init . electric-indent-mode)
	     (prog-mode . electric-pair-mode))
  :config
  (setq electric-pair-pairs
      '(
		(?\" . ?\")  ;; 添加双引号补齐
		(?\{ . ?\})  ;; 添加大括号补齐
		(?\' . ?\'))) ;; 添加单引号补齐)
  )


  

(use-package drag-stuff
  :ensure t
  :bind (("<M-up>" . drag-stuff-up)
	 ("<M-down>" . drag-stuff-down))
  )

;;
;; https://github.com/abo-abo/swiper
;;
(use-package ivy
  :ensure t)
(use-package swiper
  :ensure t)
(use-package counsel
  :ensure t
  :diminish (ivy-mode . "")
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (setq ivy-height 10)
  (setq ivy-initial-inputs-alist nil)
  (setq ivy-count-format "%d/%d")
  (setq ivy-re-builders-alist
        `((t . ivy--regex-ignore-order)))
  (global-set-key "\C-s" 'swiper))


(provide 'init-edit)
