/*
 * File: abcv.php.js
 * Version: 1.0.9
 * Description: Suport abcv project
 * Author: freb Tran
 * Copyright 2015, freb Tran
 */
/* 
    Tracking history
    - 1.0.1 Added object Time
        |_ toHour method
    - 1.0.2 : 2015-06-02
        |_ Remove Class Error in js.error
        |_ Modify form
            |_ serializeJson
    - 1.0.3 : 2015-06-06
        |_ Add paging
        |_ Implement with angularJS
            |_ keypress
            |_ format telphone
            |_ event for input file
                |_ required method
                |_ extension emthod
    - 1.0.4 : 2015-06-12
        |_ Fixed bug input file
    - 1.0.5 : 2015-06-16
        |_ Fixed bug form -> serializeJson when select is multiple choice
    - 1.0.6 : 2015-06-18
        |_ Added dropdown date
        |_ Added more error
            |_ Maxlength: 20, 100, 150
            |_ Minlength: 3, 5
    - 1.0.7 : 2015-06-23
        |_ Added Alert
        |_ added Number JS
    - 1.0.8 : 2015-07-02
        |_ Upgraded Input file - ng-changed
    - 1.0.9 : 2015-07-12
        |_ Support filter with moment.js
 */
var __com__abcv__php__js = {
    version: "1.0.9",
    js: {
        error: {
            class: "error",
            custom: function(message) {
                return "" + message + "";
            },
            valid: "This field is not valid.",
            required: "This field is required.",
            leastOne: "Please select at least one.",
            fileImage: {
                invalid: "It is invalid image.",
            },
            dayOfBirth: {
                compareToDay: "DOB must be sooner than today.",
            },
            email: {
                format: "Email address is not formatted correctly.",
            },
            numberic: {
                invalid: "This field must be a number.",
            },
            group: {
                cityStateZipcode: "The City, State and Zipcode fields are required.",
            },
            phone: {
                full: "The telephone number must be from 9 to 15 numbers.",
            },
            fax: {
                full: "The fax number must be from 9 to 15 numbers.",
            },
            upload: {
                required: "Please choose file to upload.",
            },
            url: {
                invalid: "Please enter a valid URL.",
            },
            paymentAmount: {
                greaterThan: "Payment amount must be greater than or equal to 0.01.",
            },
            expirationDate: {
                greaterThan: "Expiration Date must be greater than Current Date.",
            },
            attachDocument: {
                requried: "Please attach document.",
            },
            password: {
                format: "Password is incorrect format.",
                match: "Password does not match.",
            },
            maxlength: {
                char100: "This field cannot be longer than 100 characters.",
                char150: 'This field cannot be longer than 150 characters.',
                char20: 'This field cannot be longer than 20 characters.',
            },
            minlength: {
                char5 : 'This field is required to be at least 5 characters.',
                char3 : 'This field is required to be at least 3 characters.',
            },
        },
        valid: {
            email: function(email) {
                var re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                return re.test(email);
            },
            url: function(url) {
                var regexp = /(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/;
                return regexp.test(url);
            },
            password: {
                one: function(password) {
                    // at least one number, one lowercase and one uppercase letter
                    // at least 8 characters
                    var re = /(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}/;
                    return re.test(password);
                },
                two: function(password) {
                    //Password must be 
                    // at least 8 characters 
                    // at least three of the following: 
                    // - uppercase letter, 
                    // - lowercase letter, 
                    // - number
                    // - special character. 
                    var minMaxLength = /^[\s\S]{8,}$/,
                        upper = /[A-Z]/,
                        lower = /[a-z]/,
                        number = /[0-9]/,
                        special = /[^A-Za-z0-9]/,
                        count = 0;
                    if (minMaxLength.test(password)) {
                        // Only need 3 out of 4 of these to match
                        if (upper.test(password)) count++;
                        if (lower.test(password)) count++;
                        if (number.test(password)) count++;
                        if (special.test(password)) count++;
                    }
                    return count >= 3;
                },
            },
            upload: {
                image: function(path) {
                    return this.valid(path, [".jpg", ".jpeg", ".bmp", ".gif", ".png"]);
                },
                pdf: function(path) {
                    return this.valid(path, [".pdf"]);
                },
                doc: function(path) {
                    return this.valid(path, [".doc", ".docx"]);
                },
                excel: function(path) {
                    return this.valid(path, [".xls", ".xlsx"]);
                },
                powerPoint: function(path) {
                    return this.valid(path, [".ppt", ".pptx"]);
                },
                valid: function(path, _validFileExtensions) {
                    if (path.length > 0) {
                        var blnValid = false;
                        for (var j = 0; j < _validFileExtensions.length; j++) {
                            var sCurExtension = _validFileExtensions[j];
                            if (path.substr(path.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                                blnValid = true;
                                break;
                            }
                        }
                        if (!blnValid) {
                            console.log("Sorry, " + path + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                            return false;
                        } else {
                            return true;
                        }
                    } else {
                        return false;
                    }
                },
            },
            zipCode: function(zip) {
                if (isNaN(zip)) return false;
                if (zip.length <= 5) return true;
                return false;
            },
            phone: {
                full: function() {
                    if (isNaN(phone)) return false;
                    if (9 <= phone.length && phone.length <= 15) return true;
                    return false;
                },
            },
            fax: {
                full: function(fax) {
                    if (isNaN(fax)) return false;
                    if (9 <= fax.length && fax.length <= 15) return true;
                    return false;
                },
            },
            state: function(state) {
                if (state.length <= 2) return true;
                return false;
            },
            MI: function(mi) {
                if (mi.length == 1) return true;
                return false;
            },
            paymentAmount: function(amount) {
                if (isNaN(amount)) return false;
                if (0.01 <= amount) return true;
                return false;
            },
        },
        keypress: {
            //46 : .
            dontAllowDots: function(event) {
                var key = window.event ? event.keyCode : event.which;
                if (key == 46) {
                    return false;
                } else return true;
            },
            dontSpecialCharacter: function(event) {
                var key = window.event ? event.keyCode : event.which;
                var arr = new Array(96, 126, 33, 64, 35, 36, 37, 94, 38, 42, 40, 41, 45, 95, 43, 61, 417, 91, 123, 125, 93, 432, 92, 124, 59, 58, 39, 34, 44, 60, 62, 46, 47, 63);
                if (jQuery.inArray(key, arr) !== -1) {
                    return false;
                } else return true;
            },
            numberInt: function(event) {
                var key = window.event ? event.keyCode : event.which;
                // console.log(key);
                //A-Z a-z 
                if ((65 <= key && key <= 90) || (97 <= key && key <= 122)) return false;
                //Number
                if ((48 <= key && key <= 57)) return true;
                return __com__abcv__php__js.js.keypress.dontSpecialCharacter(event);
            },
            characterNormal: function(event) {
                var key = window.event ? event.keyCode : event.which;
                //A-Z a-z 
                if ((65 <= key && key <= 90) || (97 <= key && key <= 122)) return true;
                //number
                if ((48 <= key && key <= 57)) return false;
                return __com__abcv__php__js.js.keypress.dontSpecialCharacter(event);
            },
            name: function(event) {
                var key = window.event ? event.keyCode : event.which;
                //A-Z a-z 
                if ((65 <= key && key <= 90) || (97 <= key && key <= 122)) return true;
                //-
                if (45 == key) return true;
                //Number
                if ((48 <= key && key <= 57)) return false;
                return __com__abcv__php__js.js.keypress.dontSpecialCharacter(event);
            },
            phone: function(event) {
                var charCode = window.event ? event.keyCode : event.which;
                //32: space | 40: ( | 41: ) | 45: - |
                if (charCode == 32 || charCode == 40 || charCode == 41 || charCode == 45) {
                    return true;
                }
                return !(charCode > 31 && (charCode < 48 || charCode > 57));
            },
            email: function(event) {
                var key = window.event ? event.keyCode : event.which;
                var value = event.currentTarget.value;
                if (key == 64) //@
                {
                    if (value == "") {
                        return false;
                    } else if (value.indexOf("@") != -1) {
                        return false;
                    }
                } else if (key == 46) //.
                {
                    if (value == "") //begin 
                    {
                        return false;
                    } else if (value[value.length - 1] == ".") //end
                    {
                        return false;
                    } else if (value[value.length - 1] == "@") //end
                    {
                        return false;
                    }
                } else {
                    //A-Z a-z 
                    if ((65 <= key && key <= 90) || (97 <= key && key <= 122)) return true;
                    //-_
                    if (45 == key || 95 == key) return true;
                    //Number
                    if ((48 <= key && key <= 57)) return true;
                }
                return true;
            }
        },
        browser: function() {
            var rs = {
                version: "",
                name: "",
                isIE: false,
                isSafari: false,
                isChrome: false,
                isOpera: false,
                isFirefox: false,
            };
            //------------------------- For IE
            // browser object
            var browser = {
                    verIE: null,
                    docModeIE: null,
                    verIEtrue: null,
                    verIE_ua: null
                },
                tmp;
            tmp = document.documentMode;
            try {
                document.documentMode = "";
            } catch (e) {};
            browser.isIE = typeof document.documentMode == "number" || eval("/*@cc_on!@*/!1");
            try {
                document.documentMode = tmp;
            } catch (e) {};
            // We only let IE run this code.
            if (browser.isIE) {
                browser.verIE_ua = (/^(?:.*?[^a-zA-Z])??(?:MSIE|rv\s*\:)\s*(\d+\.?\d*)/i).test(navigator.userAgent || "") ? parseFloat(RegExp.$1, 10) : null;
                var e, verTrueFloat, x,
                    obj = document.createElement("div"),
                    CLASSID = ["{45EA75A0-A269-11D1-B5BF-0000F8051515}", // Internet Explorer Help
                        "{3AF36230-A269-11D1-B5BF-0000F8051515}", // Offline Browsing Pack
                        "{89820200-ECBD-11CF-8B85-00AA005B4383}"
                    ];
                try {
                    obj.style.behavior = "url(#default#clientcaps)"
                } catch (e) {};
                for (x = 0; x < CLASSID.length; x++) {
                    try {
                        browser.verIEtrue = obj.getComponentVersion(CLASSID[x], "componentid").replace(/,/g, ".");
                    } catch (e) {};
                    if (browser.verIEtrue) break;
                };
                verTrueFloat = parseFloat(browser.verIEtrue || "0", 10);
                browser.docModeIE = document.documentMode || ((/back/i).test(document.compatMode || "") ? 5 : verTrueFloat) || browser.verIE_ua;
                browser.verIE = verTrueFloat || browser.docModeIE;
                rs.isIE = true;
                rs.name = "IE";
                rs.version = browser.verIE;
            };
            //--------------------------- For other browsers
            var nVer = navigator.appVersion;
            var nAgt = navigator.userAgent;
            var browserName = navigator.appName;
            var fullVersion = '' + parseFloat(navigator.appVersion);
            var majorVersion = parseInt(navigator.appVersion, 10);
            var nameOffset, verOffset, ix;
            // In Opera 15+, the true version is after "OPR/" 
            if ((verOffset = nAgt.indexOf("OPR/")) != -1) {
                browserName = "Opera";
                fullVersion = nAgt.substring(verOffset + 4);
                rs.isOpera = true;
                rs.name = "Opera";
                rs.version = fullVersion;
            }
            // In older Opera, the true version is after "Opera" or after "Version"
            else if ((verOffset = nAgt.indexOf("Opera")) != -1) {
                browserName = "Opera";
                fullVersion = nAgt.substring(verOffset + 6);
                if ((verOffset = nAgt.indexOf("Version")) != -1) fullVersion = nAgt.substring(verOffset + 8);
                rs.isOpera = true;
                rs.name = "Opera";
                rs.version = fullVersion;
            }
            // In MSIE, the true version is after "MSIE" in userAgent
            else if ((verOffset = nAgt.indexOf("MSIE")) != -1) {
                browserName = "IE";
                fullVersion = nAgt.substring(verOffset + 5);
                rs.isIE = true;
                rs.name = "IE";
                rs.version = fullVersion;
            }
            // In Chrome, the true version is after "Chrome" 
            else if ((verOffset = nAgt.indexOf("Chrome")) != -1) {
                browserName = "Chrome";
                fullVersion = nAgt.substring(verOffset + 7);
                rs.isChrome = true;
                rs.name = "Chrome";
                rs.version = fullVersion;
            }
            // In Safari, the true version is after "Safari" or after "Version" 
            else if ((verOffset = nAgt.indexOf("Safari")) != -1) {
                browserName = "Safari";
                fullVersion = nAgt.substring(verOffset + 7);
                if ((verOffset = nAgt.indexOf("Version")) != -1) fullVersion = nAgt.substring(verOffset + 8);
                rs.isSafari = true;
                rs.name = "Safari";
                rs.version = fullVersion;
            }
            // In Firefox, the true version is after "Firefox" 
            else if ((verOffset = nAgt.indexOf("Firefox")) != -1) {
                browserName = "Firefox";
                fullVersion = nAgt.substring(verOffset + 8);
                rs.isFirefox = true;
                rs.name = "Firefox";
                rs.version = fullVersion;
            }
            // In most other browsers, "name/version" is at the end of userAgent 
            else if ((nameOffset = nAgt.lastIndexOf(' ') + 1) < (verOffset = nAgt.lastIndexOf('/'))) {
                browserName = nAgt.substring(nameOffset, verOffset);
                fullVersion = nAgt.substring(verOffset + 1);
                if (browserName.toLowerCase() == browserName.toUpperCase()) {
                    browserName = navigator.appName;
                }
                rs.name = browserName;
                rs.version = fullVersion;
            }
            // trim the fullVersion string at semicolon/space if present
            if ((ix = fullVersion.indexOf(";")) != -1) fullVersion = fullVersion.substring(0, ix);
            if ((ix = fullVersion.indexOf(" ")) != -1) fullVersion = fullVersion.substring(0, ix);
            majorVersion = parseInt('' + fullVersion, 10);
            if (isNaN(majorVersion)) {
                fullVersion = '' + parseFloat(navigator.appVersion);
                majorVersion = parseInt(navigator.appVersion, 10);
            }
            rs.version = fullVersion;
            return rs;
        },
        form: {
            //support element is Class, Id
            autoFillData: function(element) {
                var form = null;
                var message = null;
                if (typeof element == "object") {
                    if (element.is("form")) {
                        form = element;
                    }
                } else {
                    if (element.indexOf("#") == 0) //id
                    {
                        element = element.replace("#", "");
                        form = document.getElementById(element);
                    } else if (element.indexOf(".") == 0) //class
                    {
                        element = element.replace(".", "");
                        form = document.getElementsByClassName(element);
                        if (form.length == 0) {
                            form = null;
                            message = element + " form does not exist";
                        } else if (form.length > 1) {
                            message = "On this screen " + form.length + " forms with this class " + element;
                            form = null;
                        } else {
                            form = form[0];
                        }
                    }
                }
                if (form == null) {
                    message = element + " form does not exist";
                }
                if (message != null) {
                    return;
                }
                var inputs = form.querySelectorAll("input");
                var textareas = form.querySelectorAll("textarea");
                var selects = form.querySelectorAll("select");
                for (var i = 0; i < inputs.length; i++) {
                    var input = inputs[i];
                    if (input.type == "text") {
                        input.value = abcv.js.string.random(5);
                    } else if (input.type == "email") {
                        input.value = abcv.js.string.random(5) + "@gmail.com";
                    } else if (input.type == "radio") {} else if (input.type == "checkbox") {} else if (input.type == "number") {}
                };
                for (var i = 0; i < textareas.length; i++) {
                    var textarea = textareas[i];
                    textarea.value = abcv.js.string.random(5);
                };
            },
            serializeJson: function(element) {
                var form = null;
                var message = null;
                if (typeof element == "object") {
                    if (element.is("form")) {
                        form = element;
                    }
                } else {
                    if (element.indexOf("#") == 0) //id
                    {
                        element = element.replace("#", "");
                        form = document.getElementById(element);
                    } else if (element.indexOf(".") == 0) //class
                    {
                        element = element.replace(".", "");
                        form = document.getElementsByClassName(element);
                        if (form.length == 0) {
                            form = null;
                            message = element + " form does not exist";
                        } else if (form.length > 1) {
                            message = "On this screen " + form.length + " forms with this class " + element;
                            form = null;
                        } else {
                            form = form[0];
                        }
                    }
                }
                if (form == null) {
                    message = " form does not exist";
                }
                if (message != null) {
                    console.log(message);
                    return;
                }
                var dataArray = element.serializeArray();
                var dataJson = {};
                for (var i = 0; i < dataArray.length; i++) {
                    if ( dataArray[i].value == "true")
                         dataArray[i].value = true;
                    if (typeof dataJson[dataArray[i].name] != 'undefined' )
                    {
                        if (jQuery.isArray(dataJson[dataArray[i].name]))
                        {
                            dataJson[dataArray[i].name].push(dataArray[i].value);
                        }
                        else
                        {
                            var t = dataJson[dataArray[i].name];
                            dataJson[dataArray[i].name] = [t, dataArray[i].value];
                        }
                    }
                    else
                    {
                        dataJson[dataArray[i].name] = dataArray[i].value;
                    }
                };
                return dataJson;
            }
        },
        number: {
            is_float: function (mixed_var) {
                //  discuss at: http://phpjs.org/functions/is_float/
                // original by: Paulo Freitas
                // bugfixed by: Brett Zamir (http://brett-zamir.me)
                // improved by: WebDevHobo (http://webdevhobo.blogspot.com/)
                // improved by: Rafał Kukawski (http://blog.kukawski.pl)
                //        note: 1.0 is simplified to 1 before it can be accessed by the function, this makes
                //        note: it different from the PHP implementation. We can't fix this unfortunately.
                //   example 1: is_float(186.31);
                //   returns 1: true
                return +mixed_var === mixed_var && (!isFinite(mixed_var) || !! (mixed_var % 1));
            },
            is_int: function (mixed_var) {
                //  discuss at: http://phpjs.org/functions/is_int/
                // original by: Alex
                // improved by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
                // improved by: WebDevHobo (http://webdevhobo.blogspot.com/)
                // improved by: Rafał Kukawski (http://blog.kukawski.pl)
                //  revised by: Matt Bradley
                // bugfixed by: Kevin van Zonneveld (http://kevin.vanzonneveld.net)
                //        note: 1.0 is simplified to 1 before it can be accessed by the function, this makes
                //        note: it different from the PHP implementation. We can't fix this unfortunately.
                //   example 1: is_int(23)
                //   returns 1: true
                //   example 2: is_int('23')
                //   returns 2: false
                //   example 3: is_int(23.5)
                //   returns 3: false
                //   example 4: is_int(true)
                //   returns 4: false

                return mixed_var === +mixed_var && isFinite(mixed_var) && !(mixed_var % 1);
            },
        },
        string: {
            random: function(length) {
                if (isNaN(length)) return "";
                length = Math.round(Number(length));
                return Math.round((Math.pow(36, length + 1) - Math.random() * Math.pow(36, length))).toString(36).slice(1);
            },
            random2: function(len, charSet) {
                /*
                 * randomString(5);
                 * randomString(5, 'PICKCHARSFROMTHISSET');
                 */
                charSet = charSet || 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
                var randomString = '';
                for (var i = 0; i < len; i++) {
                    var randomPoz = Math.floor(Math.random() * charSet.length);
                    randomString += charSet.substring(randomPoz, randomPoz + 1);
                }
                return randomString;
            },
            makeId: function() {
                var text = "";
                var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                for (var i = 0; i < 5; i++) text += possible.charAt(Math.floor(Math.random() * possible.length));
                return text;
            },
        },
        json: {
            replacer: function(match, pIndent, pKey, pVal, pEnd) {
                var key = '<span class=json-key>"';
                var val = '<span class=json-value>';
                var str = '<span class=json-string>';
                var r = pIndent || '';
                if (pKey) r = r + key + pKey.replace(/[": ]/g, '') + '"</span>: ';
                if (pVal) r = r + (pVal[0] == '"' ? str : val) + pVal + '</span>';
                return r + (pEnd || '');
            },
            prettyPrint: function(obj) {
                var jsonLine = /^( *)("[\w]+": )?("[^"]*"|[\w.+-]*)?([,[{])?$/mg;
                return JSON.stringify(obj, null, 3).replace(/&/g, '&amp;').replace(/\\"/g, '&quot;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(jsonLine, library.json.replacer);
            },
            textarea_replacer: function(match, pIndent, pKey, pVal, pEnd) {
                var key = '"';
                var val = '';
                var str = '';
                var r = pIndent || '';
                if (pKey) r = r + key + pKey.replace(/[": ]/g, '') + '": ';
                if (pVal) r = r + (pVal[0] == '"' ? str : val) + pVal + '';
                return r + (pEnd || '');
            },
            textarea_prettyPrint: function(obj) {
                var jsonLine = /^( *)("[\w]+": )?("[^"]*"|[\w.+-]*)?([,[{])?$/mg;
                return JSON.stringify(obj, null, 3).replace(/&/g, '&amp;').replace(/\\"/g, '&quot;').replace(/</g, '&lt;').replace(/>/g, '&gt;').replace(jsonLine, library.json.textarea_replacer);
            },
        },
        time: {
            "toHour": function(pTime) {
                if (!pTime) return 0;
                /* hh:mm => n */
                var value = pTime.trim().split(":");
                if (value.length == 1) {
                    if (isNaN(value)) return 0;
                    else return value;
                } else if (value.length != 2) return 0;
                var hh = Number(value[0]);
                var mm = Number(value[1]);
                /* 
                    60 => 1 
                    mm => ?
                */
                var mid = mm / 60;
                return hh + Number(mid);
            },
            "convertNumberToTime": function(pNumber) {
                /* n => hh:mm */
            },
        },
        paging: {
            _paging: function(page, totalItem, itemPerPage) {
                var resp = {
                    "offset": (page - 1) * itemPerPage,
                    "endOffset": ((page - 1) * itemPerPage) + itemPerPage,
                    "currentPage": Math.floor(page),
                };
                if (totalItem) {
                    var totalPage = Math.floor(totalItem / itemPerPage);
                    if (totalPage * itemPerPage < totalItem) totalPage += 1;
                    resp.totalPage = totalPage;
                    resp.totalItem = totalItem;
                    resp.itemPerPage = itemPerPage;
                }
                return resp;
            }
        }
    },
};
jQuery(function() {
    for (className in __com__abcv__php__js.js.keypress) {
        jQuery('.' + className).keypress(__com__abcv__php__js.js.keypress[className]);
    };
});
if (typeof angular != "undefined") {
    angular.module('abcv.js', [])
    .directive('input', function($timeout) {
        return {
            restrict: 'E',
            link: function(scope, element, attr) {
                //setting keypress
                for (className in __com__abcv__php__js.js.keypress) {
                    if (element.hasClass(className)) {
                        element.keypress(__com__abcv__php__js.js.keypress[className]);
                    }
                }
            }
        }
    }).directive('fileModel', ['$parse', function($parse) {
        return {
            restrict: 'A',
            priority: 1,
            link: function(scope, element, attrs) {
                
                var model = $parse(attrs.fileModel);
                var modelSetter = model.assign;
                var form = jQuery("form").has(element);
                var control = {
                    $name: attrs.name,
                    $invalid: false,
                    $valid: true,
                    $dirty: false,
                    $$success: {},
                    $error: {},
                    $commitViewValue: function() {
                        console.log("commitViewValue");
                        return true;
                    },
                };
                if (attrs.required) {
                    control.$$success.required = true;
                    control.$error.required = true;
                    if (!scope[form.attr("name")].$error.required) scope[form.attr("name")].$error.required = [];
                    scope[form.attr("name")].$error.required.push(control);
                    control.$invalid = true;
                }
                control.$valid = !control.$invalid;
                if (control.$invalid) {
                    scope[form.attr("name")].$invalid = control.$invalid;
                    scope[form.attr("name")].$valid = !scope[form.attr("name")].$invalid;
                }
                if (!scope[form.attr("name")][attrs.name]) {
                    scope[form.attr("name")][attrs.name] = control;
                    // scope[form.attr("name")].$addControl(control);
                }
                element.bind('change', function() {
                    var form = jQuery("form").has(element);
                    console.log(scope[form.attr("name")]);
                    scope[form.attr("name")][attrs.name].$error = {};
                    scope[form.attr("name")][attrs.name].$invalid = false;
                    scope[form.attr("name")][attrs.name].$valid = !scope[form.attr("name")][attrs.name].$invalid;
                    scope[form.attr("name")][attrs.name].$dirty = true;
                    //element valid required
                    if (scope[form.attr("name")][attrs.name].$$success.required) {
                        if (!element.val()) {
                            scope[form.attr("name")][attrs.name].$error.required = true;
                            scope[form.attr("name")][attrs.name].$invalid = true;
                        }
                    }
                    //form valid required
                    if (scope[form.attr("name")].$error.required) {
                        for (var i = 0; i < scope[form.attr("name")].$error.required.length; i++) {
                            if (scope[form.attr("name")].$error.required[i].$name == attrs.name) {
                                scope[form.attr("name")].$error.required.splice(i, 1);
                                break;
                            }
                        };
                        if (scope[form.attr("name")].$error.required.length == 0) {
                            delete scope[form.attr("name")].$error.required;
                        }
                    }
                    if (element.val()) {
                        //element valid ext
                        var upFile = element[0].files[0];
                        if (attrs.ngExt) {
                            var extArr = attrs.ngExt.split(",");
                            console.log(extArr);
                            if (!__com__abcv__php__js.js.valid.upload.valid(upFile.name, extArr)) {
                                scope[form.attr("name")][attrs.name].$error.ext = true;
                                scope[form.attr("name")][attrs.name].$invalid = true;
                                if (!scope[form.attr("name")].$error.fileExt) scope[form.attr("name")].$error.fileExt = [];
                                scope[form.attr("name")].$error.fileExt.push(control);
                            } else {
                                //form valid ext
                                if (scope[form.attr("name")].$error.fileExt) {
                                    for (var i = 0; i < scope[form.attr("name")].$error.fileExt.length; i++) {
                                        if (scope[form.attr("name")].$error.fileExt[i].$name == attrs.name) {
                                            scope[form.attr("name")].$error.fileExt.splice(i, 1);
                                            break;
                                        }
                                    };
                                    if (scope[form.attr("name")].$error.fileExt.length == 0) {
                                        delete scope[form.attr("name")].$error.fileExt;
                                    }
                                }
                            }
                        }
                    }
                    scope[form.attr("name")][attrs.name].$valid = !scope[form.attr("name")][attrs.name].$invalid;
                    if (jQuery.isEmptyObject(scope[form.attr("name")].$error)) {
                        scope[form.attr("name")].$invalid = false;
                    } else {
                        scope[form.attr("name")].$invalid = true;
                    }
                    scope[form.attr("name")].$valid = !scope[form.attr("name")].$invalid;

                    if (attrs.ngChanged)
                        eval('scope.' +attrs.ngChanged);

                    scope.$apply(function() {
                        modelSetter(scope);
                    });
                });
            }
        };
    }]).factory('dateDropdownUtils', function() {
        var that = this,
            dayRange = [1, 31],
            months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

        function changeDate(date) {
            if (date.day > 28) {
                date.day--;
                return date;
            } else if (date.month > 11) {
                date.day = 31;
                date.month--;
                return date;
            }
        };
        return {
            checkDate: function(date) {
                var d;
                if (!date.day || !date.month || !date.year) return false;
                d = new Date(Date.UTC(date.year, date.month, date.day));
                if (d && (d.getMonth() === date.month && d.getDate() === Number(date.day))) {
                    return d;
                }
                return this.checkDate(changeDate(date));
            },
            days: (function() {
                var days = [];
                while (dayRange[0] <= dayRange[1]) {
                    days.push(dayRange[0]++);
                }
                return days;
            }()),
            months: (function() {
                var lst = [],
                    mLen = months.length;
                while (mLen--) {
                    lst.push({
                        value: mLen+1,
                        name: months[mLen]
                    });
                }
                return lst;
            }())
        };
    }).factory('phpModal', function($modal) {
        return {
            alert: function(message, title) {
                var modalInstance = $modal.open({
                    animation: true,
                    template: '<div class="modal-header">'+
                            '<h3 class="modal-title">' + title + '</h3>'+
                        '</div>'+
                        '<div class="modal-body">'+ message +
                        '</div>'+
                        '<div class="modal-footer">'+
                            '<button ng-click="ok()" class="btnOk button button-primary">Ok</button>'+
                        '</div>',
                    controller : function($scope){
                        $scope.ok = function(){
                          modalInstance.dismiss('cancel');  
                        } 
                    },
                    resolve: {
                        items: function () {
                          return null;
                        }
                    }
                });
            },
        };
    }).directive('datedropdowns', ['dateDropdownUtils','$parse', function(dateDropdownUtils, $parse) {
        return {
            restrict: 'A',
            replace: true,
            priority: 1,
            transclude: true,
            require: '^ngModel',
            scope: {
                model: '=ngModel',
                ngChange: '&',
            },
            controller: ['$scope', 'dateDropdownUtils', function($scope, dateDropdownUtils) {
                $scope.days = dateDropdownUtils.days;
                $scope.months = dateDropdownUtils.months;

                $scope.$watch('model', function(newDate) {
                    if (typeof newDate == "string") {
                         $scope.model = {
                            day : new Date(newDate).getUTCDate(),
                            month : new Date(newDate).getUTCMonth(),
                            year : new Date(newDate).getUTCFullYear(),
                        };
                        $scope.elementDropdownDate.$setValidity('required', null);
                    }
                });

                $scope.days_disabled = [];

                $scope.changeDateTime = function(model) {
                    if (model.day && model.month && model.year)
                    {
                        $scope.elementDropdownDate.$setValidity('required', null);
                    }
                    // $scope.days_disabled = [30,31];
                    $scope.ngChange();
                };
                $scope.disabledOptDays = function(day) {
                    if ($scope.days_disabled.indexOf(day) != -1)
                    {
                        return true;
                    }
                    return false;
                }
            }],
            template: '<div class="formDateDropdown form-inline">' + 
            '    <select name="{{datedropdowns_fields}}.day" ng-model="model.day" placeholder="Day" class="form-control" ng-change="changeDateTime(model)">' + 
            '       <option ng-repeat="day in days" ng-disabled="disabledOptDays(day)">{{day}}</option>' + 
            '    </select>' + 
            '    <select name="{{datedropdowns_fields}}.month" ng-model="model.month" placeholder="Month" class="form-control" ng-change="changeDateTime(model)" ng-disabled="disableFieldsMonth">' + 
            '       <option ng-repeat="month in months" value="{{month.value}}">{{month.name}}</option>' + 
            '   </select>' + 
            '   <select ng-show="!yearText" name="{{datedropdowns_fields}}.year" ng-model="model.year" placeholder="Year" class="form-control"  ng-change="changeDateTime(model)" ng-disabled="disableFields">' + 
            '       <option ng-repeat="year in years">{{year}}</option>' + 
            '   </select>' + 
            '</div>',
            link: function(scope, element, attrs, ctrl) {
                // var modelSetter = $parse(attrs.ngModel).assign;
                var currentYear = parseInt(attrs.startingYear, 10) || new Date().getFullYear(),
                    numYears = parseInt(attrs.numYears, 10) || 100,
                    oldestYear = currentYear - numYears,
                    overridable = ['dayDivClass', 'dayClass', 'monthDivClass', 'monthClass', 'yearDivClass', 'yearClass'],
                    required;
                scope.years = [];
                scope.yearText = attrs.yearText ? true : false;
                scope.datedropdowns_fields = attrs.ngModel;

                var form = jQuery("form").has(element);
                scope.elementDropdownDate = scope.$parent[form.attr("name")][attrs.name];
                scope.$parent[form.attr("name")][attrs.name].$error.required = true;
                if (!scope.$parent[form.attr("name")].$error.required)
                    scope.$parent[form.attr("name")].$error.required = [];
                scope.$parent[form.attr("name")].$error.required.push(scope.$parent[form.attr("name")][attrs.name]);
                if (attrs.dateRequired) {
                    // required = attrs.dataRequired.split(' ');
                    required = [1];
                    ctrl.$parsers.push(function(value) {
                        // angular.forEach(required, function(elem) {
                        //     if (!angular.isNumber(elem)) {
                        //         ctrl.$setValidity('required', false);
                        //     }
                        // });
                        ctrl.$setValidity('required', true);
                    });
                }
                for (var i = currentYear; i >= oldestYear; i--) {
                    scope.years.push(i);
                }
                // scope.$apply(function() {
                //     modelSetter(scope);
                // });
                // (function() {
                //     var oLen = overridable.length,
                //         oCurrent,
                //         childEle;
                //     while (oLen--) {
                //         oCurrent = overridable[oLen];
                //         childEle = element[0].children[Math.floor(oLen / 2)];
                //         if (oLen % 2 && oLen != 2) {
                //             childEle = childEle.children[0];
                //         }
                //         if (attrs[oCurrent]) {
                //             angular.element(childEle).attr('class', attrs[oCurrent]);
                //         }
                //     }
                // }());
            }
        };
    }]).filter('tel', function() {
        return function(tel) {
            if (!tel) {
                return '';
            }
            var value = tel.toString().trim().replace(/^\+/, '');
            if (value.match(/[^0-9]/)) {
                return tel;
            }
            var country, city, number;
            switch (value.length) {
                case 10: // +1PPP####### -> C (PPP) ###-####
                    country = 1;
                    city = value.slice(0, 3);
                    number = value.slice(3);
                    break;
                case 11: // +CPPP####### -> CCC (PP) ###-####
                    country = value[0];
                    city = value.slice(1, 4);
                    number = value.slice(4);
                    break;
                case 12: // +CCCPP####### -> CCC (PP) ###-####
                    country = value.slice(0, 3);
                    city = value.slice(3, 5);
                    number = value.slice(5);
                    break;
                default:
                    return tel;
            }
            if (country == 1) {
                country = "";
            }
            number = number.slice(0, 3) + '-' + number.slice(3);
            return (country + " (" + city + ") " + number).trim();
        };
    }).filter('range', function() {
        /*
        Ex: 
            <li ng-repeat="n in [] | range:10">
            {{n}}
            </li> 
        */
        return function(input, total) {
            total = parseInt(total);
            for (var i=0; i<total; i++)
                input.push(i);
            return input;
        };
    }).filter('moment', function() {
        //http://jsfiddle.net/sumrak/6gYAz/2/
        //moment.js
        /*
        Ex:
            {{dateISO | moment:'M/D/YYYY h:m A'}}
        */
        return function(dateString, format) {
            return moment(dateString).format(format);
        };
    });
}