function __shell_smart_tab
    # 获取当前光标的位置
    set -l old_pos (commandline -C)
    
    # 尝试采纳建议
    commandline -f accept-autosuggestion
    
    # 获取采纳后的光标位置
    set -l new_pos (commandline -C)

    # 如果光标没动，说明根本没有灰色建议可以采纳
    if test "$old_pos" = "$new_pos"
        # 那就执行正常的补全
        commandline -f complete
    end
end
