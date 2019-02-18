require 'cgi'
pages << {
    page_type: 'products_search',
    method: 'GET',
    url:"https://api.gpa.digital/pa/products/list/secoes/C4215/energeticos?storeId=501&qt=12&s=&ftr=facetSubShelf_ss%3A4215_Energ%C3%A9ticos&p=0&rm=&gt=list&isClienteMais=false",
    vars: {
        'input_type' => 'taxonomy',
        'search_term' => '-',
        'page' => 1
    }


}
search_terms = ['Red Bull', 'RedBull', 'Energético', 'Energéticos']
search_terms.each do |search_term|

  pages << {
      page_type: 'products_search',
      method: 'GET',
      url: "https://paodeacucar.resultspage.com/search?p=Q&ts=json-full&lot=json&w=#{CGI.escape(search_term)}&cnt=12&ref=www.paodeacucar.com&ua=Mozilla%2F5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_10_0)%20AppleWebKit%2F537.36%20(KHTML%2C%20like%20Gecko)%20Chrome%2F72.0.3626.109%20Safari%2F537.36&ep.selected_store=501",
      vars: {
          'input_type' => 'search',
          'search_term' => search_term,
          'page' => 1
      }


  }

end