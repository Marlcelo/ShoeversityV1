function copyPresent(){

    var pCity = document.getElementById('pcityAdd');
    var pStreet = document.getElementById('pstreetAdd');
    var pProvince = document.getElementById('pprovinceAdd');
    var pZip = document.getElementById('pzipAdd');

    var city = document.getElementById('cityAdd').value;
    var street = document.getElementById('streetAdd').value;
    var province = document.getElementById('provinceAdd').value;
    var zip = document.getElementById('zipAdd').value;


    if((city && street && province && zip) && (!pCity.value&&!pStreet.value&&!pProvince.value&&!pZip.value) ){
        pCity.value = city;
        pStreet.value = street;
        pProvince.value = province;
        pZip.value = zip;
    }
};

