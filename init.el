; http://ergoemacs.org/emacs/emacs_set_backup_into_a_directory.html
; ¿who needs backups when you can just `C-x s` every second?
; ¡this is the number one reason why i kept using vim; free me from this beast of burden!
; ¡EMACS!
; ¡MACRO!
; ¡ACTED!
; ¡CREDO!
; ¡SODOM!
(setq make-backup-files nil); cease, and desist, crufting unsolicited backup_files~
(setq auto-save-default nil); cease, and desist, crufting unsolicited #autosave_files#
(setq create-lockfiles  nil); cease, and desist, crufting unsolicited .#lock_files

; `ln -s ~/test/.emacs.d ~/.emacs.d` does not work, and even if it did; i wouldn't want emacs writing to ~/test/.emacs.d
; this does not work from .emacs nor .emacs.d/init.el
;(setq default-directory    (file-truename "~/test/.emacs.d/default/"))
;(setq user-emacs-directory (file-truename "~/test/.emacs.d/"        ))
;(setq diary-file           (file-truename "~/test/.emacs.d/diary"   ))

; 𝄞3
(setq-default tab-width 3)

; ##prolog
(add-to-list 'interpreter-mode-alist '("swipl" . prolog-mode))
