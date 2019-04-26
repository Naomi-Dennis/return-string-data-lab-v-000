$(document).ready = init 

function init(){
  $(".js-more-buttdon").on("click", viewMore)
}

function viewMore(){
  let id = $(this).data("id")
  $.get(`/products/${id}/body`, (data) => {
    console.log(data)
  })
}