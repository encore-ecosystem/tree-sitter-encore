(comment) @comment
(visibility_modifier) @keyword

[
  "fn"
  "async"
  "await"
  "spawn"
  "struct"
  "enum"
  "trait"
  "impl"
  "for"
  "in"
  "let"
  "static"
  "mut"
  "ret"
  "while"
  "do"
  "loop"
  "break"
  "continue"
  "if"
  "elif"
  "else"
  "match"
  "import"
  "as"
  "with"
  "macro_rules"
  "extern"
  "unsafe"
  "ehir"
  "true"
  "false"
  "not"
] @keyword

[
  "H"
  "S"
] @type.builtin

[
  "+"
  "-"
  "*"
  "**"
  "/"
  "%"
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "="
  "+="
  "-="
  "*="
  "**="
  "/="
  "%="
  "&="
  "|="
  "^="
  "<<="
  ">>="
  "&&"
  "||"
  "&"
  "|"
  "^"
  "~"
  "<<"
  ">>"
  "?"
  "!"
  "=>"
  "->"
  "::"
  "."
] @operator

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ","
  ":"
  ";"
] @punctuation.delimiter

(string_literal) @string
(integer_literal) @number
(float_literal) @number.float
(boolean_literal) @boolean

(typed_parameter name: (identifier) @variable.parameter)
(closure_parameter name: (identifier) @variable.parameter)
(receiver_parameter "self" @variable.builtin)
(for_statement item: (identifier) @variable.parameter)
(with_statement binding: (identifier) @variable.parameter)
(let_statement name: (identifier) @variable)
(global_let_statement name: (identifier) @variable)
(global_static_statement name: (identifier) @constant)
((range_expression
   start: (path (path_segment name: (identifier) @variable)))
 (#match? @variable "^[a-z_][A-Za-z0-9_]*$"))

(import_path (identifier) @module)
(import_statement alias: (identifier) @module)

(function_signature name: (identifier) @function)
(call_expression function: (path (path_segment name: (identifier) @function.call)))
(method_call_expression method: (identifier) @function.method.call)
(macro_rules_definition name: (identifier) @function.macro)
(macro_invocation macro: (path (path_segment name: (identifier) @function.macro)))

(struct_definition signature: (struct_signature name: (identifier) @type))
(enum_definition name: (identifier) @type)
(trait_definition name: (identifier) @type)
(impl_definition trait_name: (identifier) @type)
(impl_definition target: (type name: (identifier) @type))
(struct_signature name: (identifier) @type)
(type name: (identifier) @type)

(field_access_expression field: (identifier) @property)
(function_attribute name: (identifier) @attribute)
(decorator_application "@" @punctuation.special)
(decorator_application value: (expression) @attribute)
