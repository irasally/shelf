# -*- coding: utf-8 -*-
module BooksHelper
  def link_for(book)
    links = []
    links << link_to('修正', [:edit, book])
    if book.checked_out?
      links << link_to('在庫', [:check_in, book], :method => :put) 
    else
      links << link_to('貸出', [:check_out, book], :method => :put) 
    end
    links << delete_link(book)
    raw(links.join(' '))
  end
end
