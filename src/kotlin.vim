if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword kotlinExternal     import package
syn keyword kotlinConditional  if then else
syn keyword kotlinRepeat       while for do
syn keyword kotlinType         type
syn keyword kotlinStatement    val var
syn keyword kotlinStatement    return
syn keyword kotlinBoolean      true false
syn keyword kotlinConstant     null
syn keyword kotlinTypedef      this super
syn keyword kotlinLangClass    Any Unit String Array Int Boolean Char Long Double Float Short Byte
syn keyword kotlinClassMod     abstract final enum open attribute
syn keyword kotlinScopeDecl    public private protected
syn keyword kotlinStorageClass abstract final open override
syn keyword kotlinExceptions   throw try catch finally
syn keyword kotlinTypedef      class trait object

syn match   kotlinNumber       "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)\=\>"
syn match   kotlinNumber       "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="

syn region  kotlinString       start=+"+ end=+"+
syn region  kotlinString       start=+'+ end=+'+
syn region  kotlinString       start=+"""+ end=+"""+

syn match   kotlinFunction     "\s*\<fun\>"

syn region  kotlinComment      start="/\*" end="\*/"
syn match   kotlinLineComment  "//.*"

if !exists("did_kotlin_syntax_inits")
    let did_kotlin_syntax_inits = 1    
    
    hi link kotlinExternal     Include
    hi link kotlinStatement    Statement
    hi link kotlinConditional  Conditional
    hi link kotlinRepeat       Repeat
    hi link kotlinType         Type
    hi link kotlinTypedef      Typedef
    hi link kotlinVardef       Typedef
    hi link kotlinBoolean      Boolean
    hi link kotlinFunction     Function
    hi link kotlinLangClass    Constant
    hi link kotlinConstant     Constant
    hi link kotlinScopeDecl    kotlinStorageClass
    hi link kotlinClassDecl    kotlinStorageClass
    hi link kotlinClassMod     kotlinStorageClass
    hi link kotlinStorageClass StorageClass
    hi link kotlinExceptions   Exception
    hi link kotlinOperator     Operator
    hi link kotlinNumber       Number
    hi link kotlinString       String
    hi link kotlinComment      Comment
    hi link kotlinLineComment  Comment
endif

let b:current_syntax = "kotlin"
