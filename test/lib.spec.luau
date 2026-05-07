const test = require("@std/test")
const runner = require("@std/test/runner")

const confusables = require("../src/lib")

test.suite("lib.luau", function()
    test.case("confusable #1", function(check)
        check.eq(confusables(198), "AE")
    end)

    test.case("confusable #2", function(check)
        check.eq(confusables(451), "!")
    end)

    test.case("confusable #3", function(check)
        check.eq(confusables(8920), "<<<")
    end)

    test.case("confusable #4", function(check)
        check.eq(confusables(9290), "\\\\")
    end)

    test.case("confusable #5", function(check)
        check.eq(confusables(128876), "VB")
    end)
end)

runner.runRegisteredTests()