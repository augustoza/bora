const initFacebook = () => {
  const facebook = document.getElementById('fb-root');

    if (facebook) {
    console.log('teste')
  window.fbAsyncInit = function() {
    FB.init({
      appId            : 'your-app-id',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v9.0'
    });
  };
}};

export { initFacebook };