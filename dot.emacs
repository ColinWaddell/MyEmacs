;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;org-mode configuration
;; Enable org-mode
(require 'org)
(setq org-todo-keywords
   '((sequence "TODO" "BACK-BURNER" "IN-PROGRESS" "WAITING" "DONE")))
;; Make org-mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen
(define-key global-map "\C-ca" 'org-agenda)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(org-agenda-files
   (quote
    ("c:/Users/colinw.CS/Documents/Projects/orgmode/todo.org")))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq org-tag-alist '(("programming" . ?p) ("electronics" . ?e) ("documentation" . ?d) ("processes" . ?r) ("investigation" . ?i) ("debugging" . ?b)))
(setq org-startup-indented t)
(setq org-hide-leading-stars t)
(setq org-ellipsis " \u25bc" )
(setq org-M-RET-may-split-line '((item) (default . t)))
(setq-default cursor-type 'bar) 
(setq org-log-done 'time)
(global-hl-line-mode 1)
(set-face-background 'hl-line "#37484E")
(set-face-foreground 'highlight nil)

