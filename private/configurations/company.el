(require 'company)
(require 'company-go)
(setq company-tooltip-limit 20)
(setq company-idle-delay .05)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
(add-hook 'after-init-hook 'global-company-mode)

(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "#333333" :foreground "#FFFFFF"))))
 '(company-tooltip-selection
   ((t (:background "#10778A" :foreground "#333333"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))

(push '(company-semantic :with company-yasnippet) company-backends)

(add-hook 'company-completion-started-hook 'lambda()
	  (local-set-key (kbd "SPACE") 'company-complete-common-or-cycle)
	  )
