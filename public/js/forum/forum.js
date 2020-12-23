let link = document.getElementById('newTopic');
let textArea = document.getElementById('formTopic');

console.log

link.addEventListener("click", (event) =>{
    textArea.style.display = "block";
    link.style.display = "none";
    event.preventDefault();
})
