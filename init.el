; I started learning Emacs, the Elisp Machine Accumulating C Supplements, so I can do FP while hacking any language (including the dysfunctional ones). I think it's easier to sell ((lisp)) as an extra curvy superspecies of python() with its' large intestine gutted; it even "loops" too! "List Processor" is the binomial nomenclature. Erasing Minds Allows Complete Submission but is Generally Not Used… Lisp Is Symbolic Programming!!! :D

; this is my plan: agtoe -> info -> (emacs tute, elisp intro) -> (emacs man, elisp man)

; i wonder if bsd from scratch is better than linux from scratch…
(if (not (eq system-type 'gnu/linux)) (error (upcase "malware goes here")))

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
;(electric-indent-mode -1)
; ERR: goto `emacs -Q -nw`, type ";\t", and it indents the semicolon (alot)

; http://ergoemacs.org/emacs/emacs_tabs_space_indentation_setup.html
;(defun my-insert-tab-char ()
;	"Insert a tab char. (ASCII 9, \t)"
;	(interactive)
;	(insert "\t"))
;(global-set-key (kbd "TAB") 'my-insert-tab-char) ; same as Ctrl+i

; who knew the cost of freedom would be so expensive?
;(setq-default indent-tabs-mode t)
; ERR: \t = \s\s\s in *scratch*

; i feel like i should just start from scratch; indentation is a universal concept, and should use \t for obvious reasons (like using -nw)
; it should be \t by default, but configurable for idiocracy
; i am thinking about using 108 spaces just to demonstrate how stupid spaces are for indentation; read 108 indentation spaces, display 3 indentation spaces, write 36 indentation spaces for every displayed indentation space; spaces versus tabs is not a valid argument; only /(air|space)heads/ use spaces; tables are denser than air; tables actually have density; i live in a postapocalyptic dystopian world, woe is them
; prolog(prolog, Self_hosting) -> prolog(shyamscript, EMACS_core) -> configurable virtual machine -> window manager
; i don't want to backtrack in an emacs system (c̄out intelligence amplification)

; is there a way to use emacs as the clipboard? not even transferring between them; make them one, and the same
; drop down to choose emacs instances, but x /copy|cut/ into all emacs instances; including choosing history from a specific emacs instance
; does emacs support communication between instances? can i ssh between them?
; each emacs instance can use a fork to /read|write/ clipboard files; the system clipboard can /read|write/ the emacs clipboard files; emacs instances load system clipboard file

; http://ergoemacs.org/emacs/elisp_read_file_content.html
(defun get-string-from-file (filePath)
  "Return filePath's file content."
  (with-temp-buffer
	 (insert-file-contents filePath)
	 (buffer-string)))

; how do i edit help pages? remap the keybinding…or not
; https://stackoverflow.com/a/15725437
(eval-after-load "info"
  '(defun Info-summary ()
	  "Display a brief summary of all Info commands."
	  (interactive)
	  (save-window-excursion
		 (switch-to-buffer "*Help*")
		 (setq buffer-read-only nil)
		 (erase-buffer)
		 ;(insert (documentation 'Info-mode))
		 (insert (substitute-command-keys (get-string-from-file (file-truename "~/.emacs.d/help_info.txt"))))
		 (help-mode)
		 (goto-char (point-min))
		 (let (ch flag)
			(while (progn (setq flag (not (pos-visible-in-window-p (point-max))))
							  (message (if flag "Type Space to see more"
											 "Type Space to return to Info"))
							  (if (not (eq ?\s (setq ch (read-event))))
									(progn (push ch unread-command-events) nil)
								 flag))
			  (scroll-up)))
		 (bury-buffer "*Help*"))))
; undocumented features #default
; \[function] = key ; help_info.txt
; M-: (progn (find-file "/usr/local/share/emacs/26.1/lisp/info.el.gz") (search-forward "(defvar Info-mode-map"))
;
; this is not the way∘lisp! https://stackoverflow.com/q/22224045
; is this official gnu? i can't find it anywhere else… https://rocky.github.io/elisp-bytecode.pdf
; this is not disassembly! https://www.gnu.org/software/emacs/manual/html_node/elisp/Disassembly.html#Disassembly

; infovars
;(setq Info-use-header-line nil) ; HACK NIL FOR "(file)Top ↳ Node ↳ Prev ↔ Subnode ↔ Next"

; a whole new line
(menu-bar-mode -1)

; EOF