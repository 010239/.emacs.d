;;
;; Adding a package source
;; https://www.emacswiki.org/emacs/ELPA
;; https://www.emacswiki.org/emacs/InstallingPackages
;;
(require 'package)

(setq package-archives '(("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;;; Initialize the packages, avoiding a re-initialization
(unless (bound-and-true-p package--initialized) ;; To avoid warnings on 27
  ;; (when (version< emacs-version "27.0")
  (package-initialize))

;;
;; https://github.com/cabins/.emacs.d/blob/dev/lisp/init-elpa.el
;;
(unless package-archive-contents
  (package-refresh-contents))

;; Settings for use-package package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(provide 'init-package-china)
