function callAlert(msg) {
    alert(msg, 3000)
}



window.alert = function (message, timeout = null) {
    document.body.style.overflow = 'hidden';
    const alertmodel = document.createElement('div');
    alertmodel.id = "modelblock";
    const alert = document.createElement('div');
    const alertButton = document.createElement('button');
    alertButton.innerText = 'OK';
    alert.classList.add('alert');
    alert.setAttribute('style', `
     position:fixed;
     top:0%;
     left:50%;
     padding:20px;
     border-radius:2 px;
     box-shadow:0 10px 5px 0 rgba(0,0,0,0.2);
     z-index: 99999999999999;
     background: #fff;
     display:flex;
     flex-direction:column;
     transform:translateX(-50%);
    `);
    alertButton.setAttribute('style', `
        border: 1px solid #255E91;
        background: #255E91;
        color:#fff;
        border-radius:3px;
        padding:5px;
        font-size:13px;
        width:35px;
        margin:0 auto;
     `)
    alert.innerHTML = `<span style="padding:10px; font-weight:bold">${message}</span>`;
    alert.appendChild(alertButton);
    alertmodel.appendChild(alert);
    alertButton.addEventListener('click', (e) => {
        alertmodel.remove();
        document.body.style.overflow = 'auto';
    });
    if (timeout != null) {
        setTimeout(() => {
            alertmodel.remove();
            document.body.style.overflow = 'auto';
        }, Number(timeout))
    }
    document.body.appendChild(alertmodel);
}