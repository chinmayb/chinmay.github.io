---
layout: default
permalink: /about/
---

<div class="about-container">
    <section class="about-intro">
        <h1>Hello, I'm Chinmaya Bharadwaj</h1>
        <p class="intro-text">
            Software Engineer passionate about building innovative solutions and exploring new technologies. 
            I love diving deep into problems, understanding how it works and coming up with elegant solutions.
        </p>
    </section>

    <section class="about-skills">
        <h2>Skills & Expertise</h2>
        <div class="skills-grid">
            <div class="skill-category">
                <h3>Languages</h3>
                <ul>
                    <li>Golang</li>
                    <li>Python</li>
                </ul>
            </div>
            <div class="skill-category">
                <h3>Technologies</h3>
                <ul>
                    <li>K8s</li>
                    <li>Docker</li>
                    <li>AWS</li>
                </ul>
            </div>
        </div>
    </section>

    <section class="about-experience">
        <h2>Experience</h2>
        <div class="experience-item">
            <h3>Senior Software Engineer</h3>
            <p>Currently working on building scalable cloud solutions, focusing on:</p>
            <ul>
                <li>Microservices Architecture</li>
                <li>Cloud Infrastructure</li>
                <li>System Design</li>
                <li>Performance Optimization</li>
            </ul>
        </div>
    </section>

    <section class="about-interests">
        <h2>Why This Blog?</h2>
        <p>Through Bits & Peace, I share my experiences and insights in software engineering. 
           I believe in the power of knowledge sharing and continuous learning. 
           Here, you'll find my thoughts on technology, coding practices, and lessons learned 
           from real-world projects.</p>
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

