class Shopping


  def initialize(product, price)
      @product = product
      @price = price.round(1)
  end



  def basictax
    @basictax = 1.10
    @totalbasic = @price * @basictax
  end

  def importtax
    @importtax = 1.15
    @totalimport = @price * @importtax
  end

  def basic_and_import_tax
    @basic_and_import_tax = 1.25
    @totalbasicimport = @price * @basic_and_import_tax
  end

  def taxexempt
    @total = @price

  end

  def total
   puts "The product total is #{@total} #{@totalbasic} #{@totalbasicimport} #{@totalimport}"
  end

end


#input_1
music_cd = Shopping.new("music_cd", 14.99)
music_cd.basictax
music_cd.total

book_1 = Shopping.new("book_1", 12.49)
book_1.taxexempt
book_1.total

chocolatebar = Shopping.new("chocolatebar", 0.85)
chocolatebar.taxexempt
chocolatebar.total

#input_2
box_of_chocolates = Shopping.new("box_of_chocolates", 10)
box_of_chocolates.importtax
box_of_chocolates.total

imported_bottle_of_perfume = Shopping.new("imported_bottle_of_perfume", 47.50)
imported_bottle_of_perfume.basic_and_import_tax
imported_bottle_of_perfume.total

#input_3
imported_bottle_of_perfume2 = Shopping.new("imported_bottle_of_perfume2", 27.99)
imported_bottle_of_perfume2.basic_and_import_tax
imported_bottle_of_perfume2.total

bottle_of_perfume = Shopping.new("bottle_of_perfume", 27.99)
bottle_of_perfume.basictax
bottle_of_perfume.total

headache_pills = Shopping.new("headache_pills", 9.75)
headache_pills.taxexempt
headache_pills.total

box_of_chocolates = Shopping.new("box_of_imported_chocolates", 11.25)
box_of_chocolates.importtax
box_of_chocolates.total
