import consumer from './consumer'

const createSenderMessage = ({user_id, name, message_id, time, photo, content}) => {
  console.log('sender');
  return(
  `<div class="message-container" id="message-${message_id}">
      <div class="row">
        <div class="col-lg-12">
            <div class="message-all message-sender">
              <div class="message-text">
                <div class="sender-name">
                  <p><strong>${name}</strong></p>
                </div>
                <p>${content}</p>
                <small class="hora">${time}</small>
              </div>
              <i class="author">
              <div class="sender">
                  <span> 
                    <a href="/profiles/${user_id}">
                      <img class="avatar dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="${photo}" />
                    </a>
                  </span>
                  </div>
                  </i>
            </div>
        </div>
      </div>
    </div>`
  )
}

const createReceiverMessage = ({user_id, name, message_id, time, photo, content}) => {
  console.log('receiver');
  return (
    `<div class="message-container" id="message-${message_id}">
      <div class="row">
        <div class="col-lg-12">
            <div class="message-all">
            <i class="author">
              <div class="sender">
                  <span> 
                    <a href="/profiles/${user_id}">
                      <img class="avatar dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="${photo}" />
                    </a>            
                  </span>
                  </div>
                  </i>
              <div class="message-outro">
                <p><strong>${name}</strong></p>
                <p>${content}</p>
                <small class="hora">${time}</small>
              </div>          
            </div>
        </div>
      </div>
    </div>`
  )
}

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        const currentUserID = document.getElementById("user_id").dataset.id
        const message = parseInt(currentUserID) === data.user_id ? createSenderMessage(data) : createReceiverMessage(data);
        console.log(data); // called when data is broadcast in the cable
        messagesContainer.insertAdjacentHTML('beforeend', message);
        window.setInterval(function() {
          var elem = document.querySelector(".chat-back");
          elem.scrollTop = elem.scrollHeight;
        }, 5000);
      },
    });
  }
}

export { initChatroomCable };