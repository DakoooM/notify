window.addEventListener("load", () => {
    window.addEventListener("message", (e) => {
        let event = e.data;

        const changeName = document.getElementById("changeName");
        const changeText = document.getElementById("changeText");
        const iconChange = document.getElementById("iconChange");
        const notify = document.getElementById("notify");

        if (event.action === "notify"){
            if (notify.classList.contains("show")){
                notify.classList.remove("show");
            } else {
                changeName.innerText = event.author;
                changeText.innerText = event.text;
                notify.style.backgroundColor = event.color || "#275aa6a0";
                if (event.icon) {
                    iconChange.classList.replace(event.icon);
                }
                notify.classList.add("show");
            }
        }
    })
});