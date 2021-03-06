describe("Test the clean command #clean", function()
    lazy_setup(function()
        require("faketorio.lib")
    end)

    it("should remove an existing folder.", function()
        faketorio.lfs.mkdir("target")
        local _, dir = faketorio.lfs.dir("target")
        assert.is_Truthy(dir)

        local file = io.open("target/blub.txt", "w")
        file:write("asdasd")
        file:close()

        faketorio.execute({clean = true})

        local attr = faketorio.lfs.attributes("target")
        assert.is_Falsy(attr)
    end)

    it("should succeeed on a non existing folder.", function()
        local attr = faketorio.lfs.attributes("target")
        assert.is_Falsy(attr)

        faketorio.execute({clean = true})

        attr = faketorio.lfs.attributes("target")
        assert.is_Falsy(attr)
    end)
end)