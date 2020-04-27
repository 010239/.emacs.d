;;
;; https://github.com/jerryhsieh/Emacs-config/blob/master/custom/org-setup.el
;;
(use-package org
  :ensure t
  :config
  (global-set-key (kbd "\C-c l") 'org-store-link)
  (global-set-key (kbd "\C-c a") 'org-agenda)
  (global-set-key (kbd "\C-c c") 'org-capture)
  (use-package org-bullets
    :ensure t
    :hook (org-mode . org-bullets-mode))
  )

(provide 'init-org)
