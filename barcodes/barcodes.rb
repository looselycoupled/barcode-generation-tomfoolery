require 'barcodes'
require '../barcode_data'

barcode_data = BarcodeData::CODES

barcode_data.keys.each do |key|
  system "mkdir #{key}"

  barcode_data[key].each do |data|
    
      barcode = Barcodes.create('Code 128', {:data => data})
      pdf_renderer = Barcodes::Renderer::Pdf.new(barcode)
      pdf_renderer.render("#{key}/#{data}.pdf")
  end
  
end