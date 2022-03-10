class ToolController < ApplicationController
  #自分史
  def my_history
  end

  def my_history_submit
    @m_h = Datum.new(
      m_h_y: params[:m_h_y],
      m_h_s: params[:m_h_s],
      m_h_t: params[:m_h_t],
      m_h_k: params[:m_h_k],
      m_h_d: params[:m_h_d],
      id_pass: params[:id_pass]
    )

    if @m_h.save
      flash[:notice] = "追加されました"
      redirect_to("/my_history/#{@m_h.id_pass}")
    else
      flash[:notice] = "入力に誤りがあるか、IDがすでに存在しています"
      render("tool/my_history") 
    end  
  end

  def my_history_result
    @data = Datum.find_by(id_pass: params[:id_pass])
  end 

  def my_history_search
    data = Datum.search(params[:search])
    if data.present?
      @data = data
    else
      flash[:notice] = "見つかりませんでした"
      render("tool/my_history")
    end    
  end  

  def my_history_edit
    @m_h = Datum.find_by(id_pass: params[:id_pass])
  end  

  def my_history_update
    @m_h = Datum.find_by(id_pass: params[:id_pass])
    @m_h.m_h_y = params[:m_h_y]
    @m_h.m_h_s = params[:m_h_s]
    @m_h.m_h_t = params[:m_h_t]
    @m_h.m_h_k = params[:m_h_k]
    @m_h.m_h_d = params[:m_h_d]
    @m_h.save
    flash[:notice] = "更新されました"
    redirect_to("/my_history/#{@m_h.id_pass}")
  end  
  
  #モチベーショングラフ
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
      flash[:notice] = "入力に誤りがあります"
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
  
  #SWOT
  def swot
  end

  #WCM
  def wcm
  end

  #MMP  
  def mmp
  end
end
