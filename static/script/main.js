document.addEventListener('DOMContentLoaded', function () {
    var siteTitle = document.getElementById('site-title');
    var turnRedOnHover = function (element) {
        element.addEventListener('mouseover', function () {
            this.style.backgroundColor = "red";
        });
        element.addEventListener('mouseout', function () {
            this.style.backgroundColor = '';
        });
    };
    if (siteTitle !== null) {
        turnRedOnHover(siteTitle);
    }
});
