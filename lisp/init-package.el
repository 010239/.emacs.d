;;
;; Adding a package source
;; https://www.emacswiki.org/emacs/ELPA
;; https://www.emacswiki.org/emacs/InstallingPackages
;;
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository


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


(provide 'init-package)
