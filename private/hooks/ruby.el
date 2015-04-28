(add-to-list 'auto-mode-alist '("\\.yajl?\\'" . ruby-mode))
(add-hook 'ruby-mode-hook
	  (lambda () (local-set-key (kbd "C-c C-r") #'ruby-refactor-extract-to-method)))
