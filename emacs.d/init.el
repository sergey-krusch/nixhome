(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages (quote (undo-tree nlinum monokai-theme smex))))

(make-directory "~/.emacs.d/autosaves/" t)

(setq package-archives '(
  ("gnu" . "https://elpa.gnu.org/packages/")
  ("marmalade" . "https://marmalade-repo.org/packages/")
  ("melpa" . "https://melpa.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(package-install-selected-packages)

(defun kill-ring-save-keep-highlight (beg end)
  "Keep the region active after the kill"
  (interactive "r")
  (prog1 (kill-ring-save beg end)
    (setq deactivate-mark nil)))

(load-theme 'monokai t)

(set-default 'cursor-type 'hbar)

(ido-mode)

(column-number-mode)

(nlinum-mode)

(delete-selection-mode 1)

(global-undo-tree-mode)

(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "<C-f4>") 'delete-window)
(global-set-key (kbd "<C-insert>") 'kill-ring-save-keep-highlight)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-S-z") 'undo-tree-visualize)

(menu-bar-mode -1)
(tool-bar-mode -1)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
