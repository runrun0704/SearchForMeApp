class ToolController < ApplicationController
  def my_history
  end

  def motivation
    @graphs = {'15' => 100, '17' => 30, '18' => 50}
    @graph = Graph.new()
  end
  
  def motivation_graph
    @graph = Graph.new(
      age: params[:age],
      happy: params[:happy],
      pass: params[:pass],
      comment: params[:comment]
    )

    if @graph.save
      flash[:notice] = "追加されました"
      redirect_to("/motivation/#{@graph.pass}")
    else
      render("tool/motivation")
    end  
    
  end

  def motivation_result
    @graph = Graph.where(pass: params[:pass]).order(age: :asc)
  end

  def motivation_edit

  end
  
  def motivation_destroy
    @graph = Graph.find_by(id:params[:id])
    @graph.destroy
    flash[:notice] = "削除されました"
    redirect_to("/motivation/#{@graph.pass}")
  end  

  def motivation_search
    graph = Graph.search(params[:search]).order(age: :asc)
    if  graph.present?
      @graph = graph
    else
      flash[:notice] = "見つかりませんでした"
      render("tool/motivation")
    end    
  end
  
  def swot
  end

  def wcm
  end

  def mmp
  end
end
