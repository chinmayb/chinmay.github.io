---
layout: page
title: About
permalink: /about/
---

<div class="about-container">
    <section class="about-intro">
        <h1>Hello, I'm Chinmay</h1>
        <p class="intro-text">
            Software Engineer passionate about building innovative solutions and exploring new technologies.
        </p>
    </section>

    <section class="about-skills">
        <h2>Skills & Expertise</h2>
        <div class="skills-grid">
            <div class="skill-category">
                <h3>Languages</h3>
                <ul>
                    <li>Python</li>
                    <li>JavaScript</li>
                    <li>Java</li>
                    <!-- Add or modify languages -->
                </ul>
            </div>
            <div class="skill-category">
                <h3>Technologies</h3>
                <ul>
                    <li>React</li>
                    <li>Node.js</li>
                    <li>AWS</li>
                    <!-- Add or modify technologies -->
                </ul>
            </div>
        </div>
    </section>

    <section class="about-experience">
        <h2>Experience</h2>
        <div class="experience-item">
            <h3>Current Role</h3>
            <p>Brief description of current role and responsibilities.</p>
        </div>
        <!-- Add more experience items as needed -->
    </section>
</div>

<style>
.about-container {
    max-width: 800px;
    margin: 0 auto;
    padding: 2rem;
    line-height: 1.6;
}

.about-intro {
    text-align: center;
    margin-bottom: 4rem;
}

.about-intro h1 {
    font-size: 2.5rem;
    margin-bottom: 1rem;
    font-weight: 600;
}

.intro-text {
    font-size: 1.2rem;
    color: #666;
    max-width: 600px;
    margin: 0 auto;
}

section {
    margin-bottom: 4rem;
}

h2 {
    font-size: 1.8rem;
    margin-bottom: 2rem;
    font-weight: 500;
    color: #333;
}

h3 {
    font-size: 1.3rem;
    margin-bottom: 1rem;
    color: #444;
}

.skills-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 2rem;
}

.skill-category ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.skill-category li {
    margin: 0.5rem 0;
    color: #555;
}

.experience-item {
    margin-bottom: 2rem;
    padding: 1.5rem;
    border: 1px solid #eee;
    border-radius: 8px;
    transition: transform 0.3s ease;
}

.experience-item:hover {
    transform: translateY(-5px);
}

@media (max-width: 600px) {
    .about-intro h1 {
        font-size: 2rem;
    }
    
    .intro-text {
        font-size: 1.1rem;
    }
    
    .skills-grid {
        grid-template-columns: 1fr;
    }
}
</style>
