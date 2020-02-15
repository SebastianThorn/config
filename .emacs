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
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)

;; load nav, a file-explorer for emacs
(add-to-list 'load-path "~/.emacs.d/emacs-nav-49/")
(require 'nav)
(nav-disable-overeager-window-splitting)
;; Optional: set up a quick key to toggle nav
(global-set-key [f8] 'nav-toggle)

;; Aliases
(defalias 'eob 'end-of-buffer)
(defalias 'wsm 'whitespace-mode)

;; Kamailio settings for .emacs file
;; (setq-default c-basic-offset 4) # Not needed, it comes from stroustrup base settings.
(c-add-style "kamailio"  '("stroustrup"
  (c-offsets-alist
    (case-label . +))))

;; my own kamailio-mode
(load-file "~/.emacs.d/kamailio.el")
