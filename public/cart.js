const cart = document.getElementById('cart');
const cartList = {};

const template = (id, img, desc, price) => {
    return `
        <button onclick="cartRemove(${id})" class="cart-delete btn btn-danger">X</button>
        <div class="img-container card-img-top">
          <img class="cart-item" src=${img} alt=${desc} />
        </div>
        <div class="product-info card-body">
          <h5 class="card-title">${desc}</h5>
          <div class="price-container row">
            <span class="card-text">$${price}</span>
          </div>
        </div>`;
};

function cartRemove(id) {
    const toRemove = document.getElementById(id);
    cart.removeChild(toRemove);
}

function handleClick(event, id, img, desc, price) {
    event.preventDefault();

    let div = document.createElement('div');
    div.id = id;
    div.classList.add('card');
    div.classList.add('fadein');
    div.innerHTML = template(id, img, desc, price);
    cart.appendChild(div);

    cartList[id] = img;
}