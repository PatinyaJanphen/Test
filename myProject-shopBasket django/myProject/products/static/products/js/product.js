const form = document.querySelector('#add-to-cart-form');
form.addEventListener('submit', async (event) => {
      event.preventDefault();
      const formData = new FormData(form);
      const response = await fetch('{% url "add-to-cart" product.id %}', {
            method: 'POST',
            body: formData,
            headers: {
            'X-CSRFToken': '{{ csrf_token }}'
            }
      });
      const result = await response.json();
      if (result.success) {
      alert('สินค้าถูกเพิ่มลงในตะกร้าแล้ว');
      } else {
      alert('เกิดข้อผิดพลาดในการเพิ่มสินค้าลงในตะกร้า');
      }
});
