(comment) @comment
(visibility_modifier) @keyword

[
  "fn"
  "struct"
  "enum"
  "trait"
  "impl"
  "for"
  "in"
  "let"
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
  "/="
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

(function_signature name: (identifier) @function)
(call_expression function: (path (path_segment name: (identifier) @function.call)))
(method_call_expression method: (identifier) @function.method.call)

(typed_parameter name: (identifier) @variable.parameter)
(receiver_parameter "self" @variable.builtin)
(for_statement item: (identifier) @variable.parameter)
(with_statement binding: (identifier) @variable.parameter)
(let_statement name: (identifier) @variable)
(global_let_statement name: (identifier) @variable)

(import_path (identifier) @module)
(import_statement alias: (identifier) @module)

(struct_definition signature: (struct_signature name: (identifier) @type))
(enum_definition name: (identifier) @type)
(trait_definition name: (identifier) @type)
(impl_definition trait_name: (identifier) @type)
(impl_definition target: (type name: (identifier) @type))
(struct_signature name: (identifier) @type)
(type name: (identifier) @type)

(field_access_expression field: (identifier) @property)
(function_attribute name: (identifier) @attribute)
