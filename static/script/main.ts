document.addEventListener('DOMContentLoaded', () => {
    const siteTitle = document.getElementById('site-title');

    const turnRedOnHover = (element: HTMLElement) => {
        element.addEventListener('mouseover', function () {
            this.style.backgroundColor = "red";
        })

        element.addEventListener('mouseout', function () {
            this.style.backgroundColor = '';
        })
    }

    if (siteTitle !== null) {
        turnRedOnHover(siteTitle);
    }
});