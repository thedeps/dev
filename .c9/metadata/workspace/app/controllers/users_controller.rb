{"filter":false,"title":"users_controller.rb","tooltip":"/app/controllers/users_controller.rb","undoManager":{"mark":3,"position":3,"stack":[[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":8,"column":5},"action":"insert","lines":["  before_action :require_login","  ","  def require_login","    if user_signed_in? || admin_signed_in?","      flash[:error] = \"Você precisa estar logado para acessar esta seção.\"","      redirect_to new_user_session_path # halts request cycle","    end","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":1,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":7},"end":{"row":4,"column":10},"action":"insert","lines":["not"]}]}],[{"group":"doc","deltas":[{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":[" "]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":11},"end":{"row":4,"column":11},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1421132299407,"hash":"0f894464b44a50408b38c5e0865841241aa315bf"}