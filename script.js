const typedName = document.getElementById("typed-name");
const fullName = "Kerlarity Kharkongor";
let charIndex = 0;

function typeWriter() {
  if (charIndex < fullName.length) {
    typedName.innerHTML += fullName.charAt(charIndex);
    charIndex++;
    setTimeout(typeWriter, 150);
  }
}
typeWriter();


const projects = [
  {
    title: "Weather App",
    description: "A web app that shows weather using API.",
    link: "#"
  },
  {
    title: "To-Do List",
    description: "A simple to-do list app with local storage.",
    link: "#"
  }
];

const projectList = document.getElementById("project-list");
projects.forEach(project => {
  const projectDiv = document.createElement("div");
  projectDiv.innerHTML = `
    <h3>${project.title}</h3>
    <p>${project.description}</p>
    <a href="${project.link}">View Project</a>
  `;
  projectList.appendChild(projectDiv);
});


document.getElementById("theme-toggle").addEventListener("click", () => {
  document.body.classList.toggle("dark-mode");
});


function updateDateTime() {
  const now = new Date();
  document.getElementById("datetime").innerText = now.toLocaleString();
}
setInterval(updateDateTime, 1000);

document.getElementById("contact-form").addEventListener("submit", function (e) {
  const email = document.getElementById("email").value;
  const name = document.getElementById("name").value;
  if (!email || !name) {
    e.preventDefault();
    alert("Please fill out all required fields.");
  }
});
