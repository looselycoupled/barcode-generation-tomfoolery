require 'rghost'
require 'rghost_barcode'  
require '../barcode_data'

barcode_data = BarcodeData::CODES

barcode_data.keys.each do |key|
  system "mkdir #{key}"

  barcode_data[key].each do |data|    
    # use smaller "paper" size if less than 13 characters 
    if data.length < 13
      doc = RGhost::Document.new :paper => [5.5,2]
    else
      doc = RGhost::Document.new :paper => [6.5,2]
    end

    doc.barcode_code128(data,{:text=>{:size=>8}, :parsefnc=>true, :enable=>[:text]})
    
    # save as png and pdf
    doc.render :png, :resolution => 200, :filename => "#{key}/#{data}.png" 
    doc.render :pdf, :resolution => 100, :filename => "#{key}/#{data}.pdf" 

  end
  
end