(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 128 :width normal)))))

;; invert-face default if gui
(when (display-graphic-p) (invert-face 'default))

;; enable line-numbers
(global-linum-mode t)

;; show colum-numbers
(column-number-mode t)

;; remove trunkation of long lines
(set-default 'truncate-lines t)

;; remove the splash-screen
(setq inhibit-splash-screen t)

;; update buffer with 'f5'
(global-set-key [f5] 'revert-buffer)

;; add M-<SPC> to mark text
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; maximize window if gui, for linux
(when (display-graphic-p) (custom-set-variables
  '(initial-frame-alist (quote ((fullscreen . maximized))))))

;; maximize window if gui, for windows
;;(w32-send-sys-command 61488)


;; set tabs to 4 spaces, and use tabs over spaces
(setq-default tab-width 2)
(setq-default indent-tabs-mode t)


;; Aliases
(defalias 'eob 'end-of-buffer)
(defalias 'wsm 'whitespace-mode)
(defalias 'cre 'comment-region)
(defalias 'ure 'uncomment-region)


;; json
(load-file "~/.emacs.d/files/json-reformat.el")

;; powershell
(load-file "~/.emacs.d/files/powershell-mode.el")

;; puppet
(load-file "~/.emacs.d/files/puppet-mode.el")

;; yaml yml
(load-file "~/.emacs.d/files/yaml-mode.el")

;; s
(load-file "~/.emacs.d/files/s.el")

;; dash
(load-file "~/.emacs.d/files/dash.el")

;; groovy
(load-file "~/.emacs.d/files/groovy-mode.el")

;; mustach-mode
;(load-file "~/.emacs.d/files/mustache-mode.el")

;; eruby-mode
(load-file "~/.emacs.d/files/eruby-mode.el")

;; go-mode
(load-file "~/.emacs.d/files/go-mode.el")


;; load dracual if 24+
(when (>= emacs-major-version 24)
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (load-theme 'dracula t))

(put 'downcase-region 'disabled nil)

