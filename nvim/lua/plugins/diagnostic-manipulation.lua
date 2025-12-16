return {
  "m-gail/diagnostic_manipulation.nvim",
  init = function()
    require("diagnostic_manipulation").setup {
      blacklist = {
        function(diagnostic)
          return string.find(diagnostic.message, 'PSAvoidUsingCmdletAliases')
        end
      },
    }
  end
}
