{"filter":false,"title":"teams_controller.rb","tooltip":"/app/controllers/teams_controller.rb","ace":{"folds":[],"scrolltop":960,"scrollleft":0,"selection":{"start":{"row":66,"column":0},"end":{"row":76,"column":5},"isBackwards":true},"options":{"tabSize":2,"useSoftTabs":true,"guessTabSize":false,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":52,"state":"start","mode":"ace/mode/ruby"}},"hash":"9d404a25da4a44d0b993bb159e16d2e3966867c8","undoManager":{"mark":40,"position":40,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":24},"end":{"row":0,"column":48},"action":"remove","lines":["InheritedResources::Base"]},{"start":{"row":0,"column":24},"end":{"row":0,"column":45},"action":"insert","lines":["ApplicationController"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":5},"end":{"row":65,"column":0},"action":"insert","lines":["",""]},{"start":{"row":65,"column":0},"end":{"row":65,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":2},"end":{"row":66,"column":0},"action":"insert","lines":["",""]},{"start":{"row":66,"column":0},"end":{"row":66,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":2},"end":{"row":76,"column":5},"action":"insert","lines":["  def update","    respond_to do |format|","      if @category.update(category_params)","        format.html { redirect_to categories_path, notice: 'Tipo de usuário atualizado com sucesso.' }","        format.json { render :show, status: :ok, location: @category }","      else","        format.html { render :edit }","        format.json { render json: @category.errors, status: :unprocessable_entity }","      end","    end","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":2},"end":{"row":66,"column":4},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":10},"end":{"row":68,"column":18},"action":"remove","lines":["category"]},{"start":{"row":68,"column":10},"end":{"row":68,"column":11},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":11},"end":{"row":68,"column":12},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":12},"end":{"row":68,"column":13},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":13},"end":{"row":68,"column":14},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":23},"end":{"row":68,"column":30},"action":"remove","lines":["ategory"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":22},"end":{"row":68,"column":23},"action":"remove","lines":["c"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":22},"end":{"row":68,"column":23},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":23},"end":{"row":68,"column":24},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":24},"end":{"row":68,"column":25},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":68,"column":25},"end":{"row":68,"column":26},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":34},"end":{"row":69,"column":44},"action":"remove","lines":["categories"]},{"start":{"row":69,"column":34},"end":{"row":69,"column":35},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":35},"end":{"row":69,"column":36},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":36},"end":{"row":69,"column":37},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":37},"end":{"row":69,"column":38},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":38},"end":{"row":69,"column":39},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":70,"column":60},"end":{"row":70,"column":68},"action":"remove","lines":["category"]},{"start":{"row":70,"column":60},"end":{"row":70,"column":61},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":70,"column":61},"end":{"row":70,"column":62},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":70,"column":62},"end":{"row":70,"column":63},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":70,"column":63},"end":{"row":70,"column":64},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":55},"end":{"row":69,"column":70},"action":"remove","lines":["Tipo de usuário"]},{"start":{"row":69,"column":55},"end":{"row":69,"column":56},"action":"insert","lines":["E"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":56},"end":{"row":69,"column":57},"action":"insert","lines":["q"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":57},"end":{"row":69,"column":58},"action":"insert","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":58},"end":{"row":69,"column":59},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":59},"end":{"row":69,"column":60},"action":"insert","lines":["p"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":60},"end":{"row":69,"column":61},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":71},"end":{"row":69,"column":72},"action":"remove","lines":["o"]},{"start":{"row":69,"column":71},"end":{"row":69,"column":72},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":36},"end":{"row":73,"column":44},"action":"remove","lines":["category"]},{"start":{"row":73,"column":36},"end":{"row":73,"column":37},"action":"insert","lines":["T"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":37},"end":{"row":73,"column":38},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":38},"end":{"row":73,"column":39},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":38},"end":{"row":73,"column":39},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":37},"end":{"row":73,"column":38},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":36},"end":{"row":73,"column":37},"action":"remove","lines":["T"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":36},"end":{"row":73,"column":37},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":37},"end":{"row":73,"column":38},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":38},"end":{"row":73,"column":39},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":73,"column":39},"end":{"row":73,"column":40},"action":"insert","lines":["m"]}]}]]},"timestamp":1421478600952}