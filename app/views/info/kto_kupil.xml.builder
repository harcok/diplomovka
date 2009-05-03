xml.order_list(:for_product => @product.nazov) do
	for o in @orders
		xml.order do
		xml.meno(o.meno)
		xml.email(o.email)
	end
   end
end