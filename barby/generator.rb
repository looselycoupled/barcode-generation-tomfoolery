require 'barby'
require 'barby/barcode/code_128'
require 'barby/outputter/png_outputter'
require '../barcode_data'

barcode_data = BarcodeData::CODES

barcode_data.keys.each do |key|
  system "mkdir #{key}"

  barcode_data[key].each do |data|
    barcode = Barby::Code128.new(data,"A")
    File.open("#{key}/#{data}.png", 'w'){|f|
      f.write barcode.to_png(:height => 100, :margin => 10)
    }
  end
  
end






















