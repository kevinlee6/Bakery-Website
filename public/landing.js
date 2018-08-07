const flashy = document.getElementsByClassName('fa-chevron-down');

setTimeout(function () {
    for (let i = 0; i < flashy.length; i++) {
        flashy[i].classList.remove('hidden');
        flashy[i].classList.add('fadeandslide');
    }
}, 2000);
setTimeout(function () {
    for (let i = 0; i < flashy.length; i++) {
        flashy[i].classList.remove('fadeandslide');
        flashy[i].setAttribute('id', `flashy${i}`);
    }
}, 4000);

const isInViewport = function (elem,px) {
    const bounding = elem.getBoundingClientRect();
    return (
        bounding.top + (px/2) >= 0 &&
        bounding.left + (px/2) >= 0 &&
        bounding.bottom - (px/2) <= (window.innerHeight || document.documentElement.clientHeight) &&
        bounding.right - (px/2) <= (window.innerWidth || document.documentElement.clientWidth)
    );
};

const hidden = document.getElementsByClassName('hidden');
window.addEventListener('scroll', _ => {
    for (let i of hidden) {
        if (isInViewport(i, window.innerHeight-100)){
            i.classList.add('show');
        } else {
            i.classList.remove('show');
        }
    }
});

const getOut = () => {
    if (scrollY + window.innerHeight + window.innerHeight/4 >= document.documentElement.offsetHeight) {
        window.location.href = '/';
    }
}

window.addEventListener('scroll', getOut);