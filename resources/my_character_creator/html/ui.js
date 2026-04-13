window.addEventListener('message', function(event) {
    if (event.data.type === "showUI") {
        document.body.style.display = event.data.display ? "block" : "none";
    }
});

// Gửi dữ liệu khi kéo thanh trượt tóc
document.getElementById('hair-slider').addEventListener('input', function() {
    fetch(`https://${GetParentResourceName()}/changeHair`, {
        method: 'POST',
        body: JSON.stringify({ value: this.value })
    });
});

// Gửi lệnh lưu
document.getElementById('save-btn').addEventListener('click', function() {
    fetch(`https://${GetParentResourceName()}/saveCharacter`, {
        method: 'POST',
        body: JSON.stringify({})
    });
});
