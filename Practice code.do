 local i 0
    foreach var of varlist _all {
        local i = `i' + 1
    }
    display "The dataset has `i' variables."

	 foreach var of varlist _all {
        display "`var'"
        display `var'[597]
        display `var'[598]
        display
    }

 foreach var of varlist _all {
        if `var'[597] != `var'[598] {
            display "The two observations of 1802011 differ on `var'."
        }
    }

	 foreach var of varlist _all {
        if `var'[597] != `var'[598] {
            display "The two observations of 1802011 differ on `var'."
        }
    }
	

ds, has(vallab yesno)
local i 0
foreach var in `r(varlist)' {
local i=`i'+1
}
display "Number of variables with yesno label is `i'"

 ds, has(vallabel yes1no0)
 foreach var in `r(varlist)' {
		replace `var'=2 if `var'==0
		lab values `var' yesno
 }
 
 * Exercise 2.3
 assert (own2wheelertheft==1 & own2wheelertheftnum!=. & own2wheelertheftvictim_1!=.)| (own2wheelertheft==2 & own2wheelertheftnum==. & own2wheelertheftvictim_1==.)
 assert (own2wheelertheftvictim_1 !=own2wheelertheftvictim_2) | own2wheelertheftvictim_1 ==.


 
