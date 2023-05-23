*** Variables ***

#URL
${URL}    https://www.amazon.in/
${browser}    chrome
${auto_close}    add_experimental_option("detach", True)


#Set Up And Tear Down Message
${Set Up1}   TC1 has Started Suceefully
${Teardown1}    TC1 has Executed Suceefully

#Xpath for The Todays Deals
${TodayDeals}        Xpath://*[text()='Today’s Deals']
${Select_Item}       xpath://*[@class='a-unordered-list a-nostyle a-horizontal feed-carousel-shelf _deals-shoveler-v2_style_list__pjYuB']/li[3]
${Item}              xpath://*[@class='a-unordered-list a-nostyle a-horizontal a-spacing-none']/li[2]

#Xpath For Price 
# ${Price}           xpath://*[@class="a-unordered-list a-nostyle a-horizontal a-spacing-none"]/descendant::li[2]/descendant::div[12]/descendant::span[7]
${Price}             xpath://*[@class='a-price-whole'][1]
${Price_PDetail}     xpath://*[@class='a-price-whole'][1]
${product_details}   Xpath://*[text()=' Primary material ']



#Product Page Data Table
${Row_Element}    xpath://*[@id="productDetails_techSpec_section_1"]/tbody/tr
${Expected_Parameter}         Weight  
