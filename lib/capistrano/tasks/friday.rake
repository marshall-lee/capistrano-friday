namespace :friday do
  motds = {
    :base_jumper => %{
┓┏┓┏┓┃
┛┗┛┗┛┃⟍ ○⟋
┓┏┓┏┓┃  ∕       Friday
┛┗┛┗┛┃ノ)
┓┏┓┏┓┃          deploy,
┛┗┛┗┛┃
┓┏┓┏┓┃          good
┛┗┛┗┛┃
┓┏┓┏┓┃          luck!
┃┃┃┃┃┃
┻┻┻┻┻┻ 
}.strip!,
    :flipping_table => %{
(╯°□°）╯︵ ┻━┻    FRIDAY DEPLOY!
}.strip!
  }

  task :check do
    invoke 'friday:good_luck' if Time.now.friday?
  end

  task :good_luck do
    motd = fetch :friday_motd
    unless motds.key? motd
      fail "MOTD #{motd.inspect} not found!"
    end
    warn motds[motd].yellow
    if fetch :friday_disable_deploy
      fail "Friday deploy disabled!"
    end
  end
end

namespace :load do
  task :defaults do
    set :friday_motd, :base_jumper
    set :friday_disable_deploy, false
  end
end
