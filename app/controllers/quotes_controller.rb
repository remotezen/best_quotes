class QuotesController < Rulers::Controller

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "a picture is worth a thousand bytes",
      "attribution" => "Oh wise one"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def show_submitter
    arr = Rules::Model::FileModel.submitter("webbed user")
    render :show, :quotes => arr
  end
  
  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end
  
  def quote_1
    quote_1 = Rulers::Model::FileModel.find(1)
    render :quote, :obj => quote_1
  end
  
  def update_quote
    attrs = {"quote" => "new new new"}
    obj = Rulers::Model::FileModel.find(1)
    obj.update(attrs)
  end
end
