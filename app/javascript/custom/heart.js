function change_color(news_id) {
  heart = document.getElementById('heart_' + news_id)
  if (heart.className == 'fa-solid fa-heart fa-heart-red') {
    heart.className = 'fa-solid fa-heart'
  } else {
    heart.className = 'fa-solid fa-heart fa-heart-red'
  }
}

