/* ==========================================
   StaffSync Landing Page JavaScript
========================================== */

// ===============================
// Hamburger Menu
// ===============================

const hamburger = document.getElementById("hamburger");
const navLinks = document.getElementById("navLinks");

if (hamburger && navLinks) {

    hamburger.addEventListener("click", () => {

        hamburger.classList.toggle("active");

        navLinks.classList.toggle("active");

    });

}

// ===============================
// Close Mobile Menu After Click
// ===============================

document.querySelectorAll(".nav-links a").forEach(link => {

    link.addEventListener("click", () => {

        if (window.innerWidth <= 768) {

            hamburger.classList.remove("active");

            navLinks.classList.remove("active");

        }

    });

});

// ===============================
// Navbar Background on Scroll
// ===============================

window.addEventListener("scroll", () => {

    const navbar = document.querySelector(".navbar");

    if (window.scrollY > 80) {

        navbar.classList.add("scrolled");

    } else {

        navbar.classList.remove("scrolled");

    }

});

// ===============================
// Animated Counter
// ===============================

const counters = document.querySelectorAll(".counter");

let counterStarted = false;

function startCounter() {

    if (counterStarted) return;

    const stats = document.querySelector(".statistics");

    if (!stats) return;

    const trigger = stats.getBoundingClientRect().top;

    if (trigger < window.innerHeight - 100) {

        counterStarted = true;

        counters.forEach(counter => {

            const target = Number(counter.getAttribute("data-target"));

            let current = 0;

            const increment = Math.max(1, Math.ceil(target / 80));

            function updateCounter() {

                current += increment;

                if (current >= target) {

                    counter.innerText = target;

                } else {

                    counter.innerText = current;

                    requestAnimationFrame(updateCounter);

                }

            }

            updateCounter();

        });

    }

}

window.addEventListener("scroll", startCounter);

window.addEventListener("load", startCounter);

// ===============================
// Reveal Animation on Scroll
// ===============================

const revealElements = document.querySelectorAll(
    ".feature-card, .workflow-card, .about-item, .stat-card"
);

function reveal() {

    revealElements.forEach(element => {

        const windowHeight = window.innerHeight;

        const top = element.getBoundingClientRect().top;

        if (top < windowHeight - 100) {

            element.classList.add("show");

        }

    });

}

window.addEventListener("scroll", reveal);

window.addEventListener("load", reveal);

// ===============================
// Smooth Active Navigation
// ===============================

const sections = document.querySelectorAll("section");
const navItems = document.querySelectorAll(".nav-links a");

window.addEventListener("scroll", () => {

    let current = "";

    sections.forEach(section => {

        const sectionTop = section.offsetTop - 120;

        const sectionHeight = section.offsetHeight;

        if (pageYOffset >= sectionTop &&
            pageYOffset < sectionTop + sectionHeight) {

            current = section.getAttribute("id");

        }

    });

    navItems.forEach(link => {

        link.classList.remove("active-link");

        if (link.getAttribute("href") === "#" + current) {

            link.classList.add("active-link");

        }

    });

});

// ===============================
// Hero Fade Effect
// ===============================

window.addEventListener("scroll", () => {

    const hero = document.querySelector(".hero");

    if (!hero) return;

    let value = window.scrollY;

    hero.style.backgroundPositionY = value * 0.4 + "px";

});

// ===============================
// Button Hover Ripple Effect
// ===============================

const buttons = document.querySelectorAll(
    ".primary-btn,.secondary-btn,.login-btn,.register-btn"
);

buttons.forEach(button => {

    button.addEventListener("mouseenter", () => {

        button.style.transition = "0.35s";

        button.style.transform = "translateY(-3px)";

    });

    button.addEventListener("mouseleave", () => {

        button.style.transform = "translateY(0px)";

    });

});

// ===============================
// Footer Year (Automatic)
// ===============================

const copyright = document.querySelector(".copyright");

if (copyright) {

    copyright.innerHTML =
        "&copy; " +
        new Date().getFullYear() +
        " StaffSync | Employee Management Portal | Developed by Sameer Saifi";

}