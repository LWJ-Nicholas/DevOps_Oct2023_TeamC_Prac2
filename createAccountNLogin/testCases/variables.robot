*** Variables ***
${url}    https://www.lazada.sg/
${session_name}    MySession

${email}    basicEmailEver@gmail.com
${full_name}    Basic NameEver
${password}    P@55w0rd123@

${sign_up_button}    //a[.//text() = 'sign up']
${sign_up_using_email_button}    //button[.//text() = 'Sign up with Email']
${email_input_01}    //input[@placeholder='Please enter your email']
${full_name_input}    //input[@placeholder='First Last']
${notif_checkbox}    //input[@id='enableNewsletter']
${password_input_01}    //input[@placeholder='Minimum 8 characters with number, letter and characters.']
${month_dropdown}    //span[@id='month']
${month}    //ul[@class='next-menu-content']/li[4]
${day_dropdown}    //span[@id='day']
${day}    //ul[@class='next-menu-content']/li[27]
${year_dropdown}    //span[@id='year']
${year}    //ul[@class='next-menu-content']/li[23]
${gender_dropdown}    //span[@id='gender']
${gender}    //ul[@class='next-menu-content']/li[2]

${login_button}    //a[.//text() = 'login']
${email_input_02}    //input[@placeholder='Please enter your Phone Number or Email']
${password_input_02}    //input[@placeholder='Please enter your password']
${enter_login}    //button[.//text() = 'LOGIN']
