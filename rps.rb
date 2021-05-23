def janken
    rps = ["グー","チョキ","パー"]
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    @my_choice = gets.chomp.to_i
    @opponent_choice = rand(3)

    while true do 
        if (@my_choice == 0 && @opponent_choice == 1) || (@my_choice == 1 && @opponent_choice == 2) || (@my_choice == 2 && @opponent_choice == 0)
            puts "ホイ！"
            puts "--------------"
            puts "あなた：#{rps[@my_choice]}を出しました"
            puts "相手：#{rps[@opponent_choice]}を出しました"
            puts "--------------"
            direction_win
            exit
        elsif (@my_choice == 1 && @opponent_choice == 0) || (@my_choice == 2 && @opponent_choice == 1) || (@my_choice == 0 && @opponent_choice == 2)
            puts "ホイ！"
            puts "--------------"
            puts "あなた：#{rps[@my_choice]}を出しました"
            puts "相手：#{rps[@opponent_choice]}を出しました"
            puts "--------------"
            direction_lose
            exit
        elsif @my_choice == @opponent_choice
            puts "ホイ！"
            puts "--------------"
            puts "あなた：#{rps[@my_choice]}を出しました"
            puts "相手：#{rps[@opponent_choice]}を出しました"
            puts "--------------"
            puts "あいこで..."
            puts "0(グー)1(チョキ)2(パー)3(戦わない)"
            @my_choice = gets.chomp.to_i
            @opponent_choice = rand(3)
            redo
        elsif @my_choice == 3
            puts "戦うのをやめました。"
            exit
        else
            puts "--------------"
            puts "0~3の中から選択してください" 
            puts "0(グー)1(チョキ)2(パー)3(戦わない)"
            @my_choice = gets.chomp.to_i
        end
    end
end

def direction
    directions = ["上","下","右","左"]
    puts "あっち向いて〜"
    puts "0(上)1(下)2(右)3(左)"
    @my_direction = gets.chomp.to_i
    @opponent_direction = rand(4)
    puts "ホイ！"
    puts "--------------"
    puts "あなた(指)：#{directions[@my_direction]}を出しました"
    puts "相手(顔)：#{directions[@opponent_direction]}を出しました"
    puts "--------------"
end 

def direction_win
    direction
    if @my_direction == @opponent_direction
        puts "あなたの勝ちです"
    else
        janken
    end
end

def direction_lose
    direction
    if @my_direction == @opponent_direction
        puts "あなたの負けです"
    else
        janken
    end
end

janken


