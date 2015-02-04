(if window-system
    (progn
      (require 'emacs-name)
      (emacs-name-set-frame-title)))

(global-auto-revert-mode t)
(turn-on-pbcopy)
