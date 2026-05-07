# luau-confusable
luau-confusable is a confusable character checker I ported from [luau-lang/luau/Ast/src/Confusables.cpp](https://github.com/luau-lang/luau/blob/a56f60243a964058c21154708e5d0b1f61eed43b/Ast/src/Confusables.cpp#L10).

# Example

```luau
const confusables = require("@path/to/luau_confusable")

const input = "𝐖or𝑑"
local corrected_input = ""

for _, codepoint in utf8.codes(input) do
    local confusable = confusables(codepoint)

    if confusable then
        print(`Unicode character U+{ string.format("%X", codepoint) } (did you mean '{ confusable }'?)`)

        corrected_input ..= confusable
    else
        corrected_input ..= utf8.char(codepoint)
    end
end

print(`Hello, { corrected_input }!`) -- Hello, Word!
```