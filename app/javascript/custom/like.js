const change_color = async (news_id, user_id) => {

  heart = document.getElementById('heart_' + news_id)
  if (heart.className == 'fa-solid fa-heart fa-heart--red') {
    heart.className = 'fa-solid fa-heart'
  } else {
    heart.className = 'fa-solid fa-heart fa-heart--red'
  }

  try {
    const requestBody = new FormData();
    requestBody.set("news_id", news_id);
    requestBody.set("user_id", user_id);

    const response = await fetch('/likes', {
      method: 'POST',
      body: requestBody,
    });
    
    console.log(response);
      
  } catch (error) {
      console.log(error)
  }
}

