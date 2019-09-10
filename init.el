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

; printf \\ec
; emacs -nw --no-splash --eval='(progn(help-with-tutorial)(goto-line 110))'
; this stupid standard is just for the shell, and i don't support it either; shells can just check if the output ends with \n, or preppend it to the prompt (some shells already do this, but i can't remember; by shell, i also mean terminal emulator)
; https://www.gnu.org/software/emacs/manual/html_node/emacs/Customize-Save.html
; if there are "specific kinds of files that are always supposed to end in" \n; that's just bad language design #idiocracy
; cat init.el
(setq      require-final-newline nil)
(setq mode-require-final-newline nil); if some"-thing" doesn't work: first try `cp cfg/.emacs.d/init.el ~/.emacs.d/init.el`

; /^;[^;]/ is not the Elisp way ∵ *scratch* only has /^;;/, and there's some esoteric law about /[^;];[^;]/ only being inlined after an instruction, reminiscent of the syntax of C; 'tis the UNIX way, reminding us the Elisp Machine Accumulates C Supplements
(setq electric-indent-mode nil)
; ERR: goto `emacs -Q -nw`, type ";\t", and it indents the semicolon (alot)

; EOF