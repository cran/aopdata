# log history of aopdata package development

-------------------------------------------------------


# aopdata v0.2.1 (dev)

**Minor changes**
* Allow for user to download data few selected cities. Closes #29
* Fix  progress bar even when showProgress = F. Closes #30
* Fix  encoding issues using `base::iconv(city, to="ASCII//TRANSLIT")`. Closes #31


-------------------------------------------------------

# aopdata v0.2.0

**Major changes**
* New function read_population. Closes #21
* New parameter `peak` added to `read_access()` function. Closes #17
* New internal support function `is_online()` to alert for possible internet connection problem. Closes #26
* Chache downloaded data in tempdir. Closes #28

**Minor changes**
* Downloads two or more cities at the same time. Closes #3.


-------------------------------------------------------

# aopdata v0.1.0

* Submitted to CRAN
