;
; These are the hightlight queries used by the
; Nova editor (as of version 10).
;
; all forms of comment
(comment) @comment

; line directive
(directive) @processing
(shebang) @processing

(null) @value.null
[
(true)
(false)
] @value.boolean

[
(this)
(super)
] @keyword.self

(string_literal) @string
(int_literal) @value.number
(float_literal) @value.number
(char_literal) @value.entity ; not sure what is best for this
(special_keyword) @value.symbols

[
	"("
	")"
	"["
	"]"
] @bracket

[
	(not_in)
	(not_is)
] @keyword.operator

[
	(storage_class)
] @keyword.modifier

(function_declaration (identifier) @identifier.function)

[
	"/="
	"/"
	".."
	"..."
	"&"
	"&="
	"&&"
	"|"
	"|="
	"||"
	"-"
	"-="
	"--"
	"+"
	"+="
	"++"
	"<"
	"<="
	"<<"
	"<<="
	">"
	">="
	">>="
	">>>="
	">>"
	">>>"
	"!"
	"!="
	"?"
	"$"
	"="
	"=="
	"*"
	"*="
	"%"
	"%="
	"^"
	"^="
	"^^"
	"^^="
	"~"
	"~="
	"@"
	"=>"
] @operator

[
	(break)
	(case)
	(catch)
	(continue)
	(do)
	(default)
	(finally)
	(else)
	(goto)
	(if)
	(switch)
	(try)
] @keyword.control

; builtin types.  it would be nice to have a different markup for it.
[
	(void)
	(bool)
	(byte)
	(ubyte)
	(char)
	(short)
	(ushort)
	(wchar)
	(dchar)
	(int)
	(uint)
	(long)
	(ulong)
	(real)
	(double)
] @keyword.construct

[
	(class)
	(struct)
	(interface)
	(union)
	(enum)
	(function)
	(delegate)
] @keyword.construct

; some editors (Helix) have a different selector for return statements.
; TODO: this keyword is sometimes a parameter attribute
(return) @keyword.control

; some editors (Helix) have a selector for imports
(import) @keyword.control

; some editors have a repeat keyword construct
[
	(for)
	(foreach)
	(foreach_reverse)
	(while)
] @keyword.control

[
	(abstract)
	(alias)
	(align)
	(asm)
	(assert)
	(auto)
	(cast)
	(const)
	(debug)
	(delete)
	(deprecated)
	(export)
	(extern)
	(final)
	(immutable)
	(in)
	(inout)
	(invariant)
	(is)
	(lazy)
	; "macro" - obsolete
	(mixin)
	(module)
	(new)
	(nothrow)
	(out)
	(override)
	(package)
	(pragma)
	(private)
	(protected)
	(public)
	(pure)
	(ref)
	(scope)
	(shared)
	(static)
	(super)
	(synchronized)
	(template)
	(this)
	(throw)
	(typeid)
	(typeof)
	(unittest)
	(version)
	(with)
	(gshared)
	(traits)
	(vector)
	(parameters_)
] @keyword

[
	(cent)
	(ucent)
	(ireal)
	(idouble)
	(ifloat)
	(creal)
	(double)
	(cfloat)
] @invalid ; these types are deprecated

(at_attribute) @identifier.property
(identifier) @identifier ; catch all