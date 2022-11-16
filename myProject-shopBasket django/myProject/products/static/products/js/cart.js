console.log('person')

var updateBtns = document.getElementsByClassName('update-cart')
for (i = 0; i < updateBtns.length; i++) {
    updateBtns[i].addEventListener("onclick", function() {
        var productId = this.dataset.product
        var action = this.dataset.action
        console.log('productID:', productId, 'action:', action)
    })
}