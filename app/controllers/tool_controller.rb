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

    if Datum.exists?(id_pass: @m_h.id_pass)
      @m_h = Datum.find_by(id_pass: params[:id_pass])
      @m_h.m_h_y = params[:m_h_y]
      @m_h.m_h_s = params[:m_h_s]
      @m_h.m_h_t = params[:m_h_t]
      @m_h.m_h_k = params[:m_h_k]
      @m_h.m_h_d = params[:m_h_d]
      @m_h.save
      redirect_to("/my_history/#{@m_h.id_pass}")
    else  
      if @m_h.save
        flash[:notice] = "追加されました"
        redirect_to("/my_history/#{@m_h.id_pass}")
      else
        flash[:notice] = "入力に誤りがあるか、IDがすでに存在しています"
        render("tool/my_history") 
      end  
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

  def swot_submit
    @swot = Datum.new(
      swot_s: params[:swot_s],
      swot_w: params[:swot_w],
      swot_o: params[:swot_o],
      swot_t: params[:swot_t],
      s_t: params[:s_t],
      s_o: params[:s_o],
      w_o: params[:w_o],
      w_t: params[:w_t],
      id_pass: params[:id_pass]
    )

    if Datum.exists?(id_pass:@swot.id_pass)
      @swot = Datum.find_by(id_pass: params[:id_pass])
      @swot.swot_s = params[:swot_s]
      @swot.swot_w = params[:swot_w]
      @swot.swot_o = params[:swot_o]
      @swot.swot_t = params[:swot_t]
      @swot.s_t = params[:s_t]
      @swot.s_o = params[:s_o]
      @swot.w_o = params[:w_o]
      @swot.w_t = params[:w_t]
      @swot.save
      redirect_to("/swot/#{@swot.id_pass}")
    else
      if @swot.save
        flash[:notice] = "追加されました"
        redirect_to("/swot/#{@swot.id_pass}")
      else
        flash[:notice] = "入力に誤りがあるか、IDがすでに存在しています"
        render("tool/swot") 
      end  
    end  
  end  

  def swot_result
    @swot = Datum.find_by(id_pass: params[:id_pass])
  end 

  def swot_search
    data = Datum.search(params[:search])
    if data.present?
      @swot = data
    else
      flash[:notice] = "見つかりませんでした"
      render("tool/my_history")
    end
  end  

  #WCM
  def wcm
  end

  def wcm_submit
    @wcm = Datum.new(
      will: params[:will],
      can: params[:can],
      must: params[:must],
      id_pass: params[:id_pass]
    )

    if Datum.exists?(id_pass: @wcm.id_pass)
      @wcm = Datum.find_by(id_pass: params[:id_pass])
      @wcm.will = params[:will]
      @wcm.can = params[:can]
      @wcm.must = params[:must]
      @wcm.save
      redirect_to("/wcm/#{@wcm.id_pass}")
    else  
      if @wcm.save
        flash[:notice] = "追加されました"
        redirect_to("/wcm/#{@wcm.id_pass}")
      else
        flash[:notice] = "入力に誤りがあるか、IDがすでに存在しています"
        render("tool/wcm") 
      end  
    end
  end  

  def wcm_result
    @wcm = Datum.find_by(id_pass: params[:id_pass])
  end  

  def wcm_search
    data = Datum.search(params[:search])
    if data.present?
      @wcm = data
    else
      flash[:notice] = "見つかりませんでした"
      render("tool/wcm")
    end
  end  

  #MMP  
  def mmp
  end
end
