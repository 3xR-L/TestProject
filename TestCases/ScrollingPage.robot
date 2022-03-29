*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    maximize browser window
    #Move to a position specifying the x and y pixels to move (horizontal and vertical)
    #execute javascript    window.scrollBy(0,2500)
    #Scroll until the element is visible
    #scroll element into view    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[93]/td[2]
    execute javascript    window.scrollTo(0,document.body.scrollHeight)     #end of the page
    sleep    5
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)    #start of the page
