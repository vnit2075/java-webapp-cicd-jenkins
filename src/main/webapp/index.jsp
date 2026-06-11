<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps CI/CD Pipeline Project</title>

    <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
        }

        body{
            font-family:'Segoe UI',sans-serif;
            background:#050505;
            color:white;
            padding:30px;
        }

        .container{
            max-width:1300px;
            margin:auto;
            background:#111;
            border-radius:15px;
            padding:30px;
            border:1px solid #00d9ff;
            box-shadow:0 0 25px rgba(0,217,255,0.4);
        }

        h1{
            text-align:center;
            color:#00d9ff;
            font-size:3rem;
            text-shadow:0 0 15px #00d9ff;
        }

        .subtitle{
            text-align:center;
            color:#cfcfcf;
            margin-top:10px;
            margin-bottom:30px;
            font-size:18px;
        }

        .stats{
            display:flex;
            justify-content:center;
            flex-wrap:wrap;
            gap:20px;
            margin-bottom:40px;
        }

        .card{
            width:220px;
            background:#181818;
            border:1px solid #00d9ff;
            border-radius:10px;
            padding:20px;
            text-align:center;
            transition:.3s;
        }

        .card:hover{
            transform:translateY(-5px);
            box-shadow:0 0 20px #00d9ff;
        }

        .card h2{
            color:#00d9ff;
        }

        .btn-container{
            display:flex;
            flex-wrap:wrap;
            justify-content:center;
            gap:15px;
            margin-bottom:30px;
        }

        button{
            background:#0f172a;
            color:#00d9ff;
            border:2px solid #00d9ff;
            padding:12px 25px;
            border-radius:8px;
            cursor:pointer;
            font-size:16px;
            transition:.3s;
        }

        button:hover{
            background:#00d9ff;
            color:black;
            box-shadow:0 0 20px #00d9ff;
        }

        #content{
            background:#181818;
            padding:30px;
            border-radius:10px;
            border-left:5px solid #00d9ff;
            min-height:450px;
            line-height:1.8;
        }

        h2{
            color:#00d9ff;
            margin-bottom:15px;
        }

        h3{
            color:#00d9ff;
            margin-top:15px;
        }

        ul,ol{
            margin-left:30px;
        }

        pre{
            background:black;
            border:1px solid #00d9ff;
            padding:15px;
            border-radius:10px;
            color:#00ff99;
            overflow:auto;
        }

        .footer-card{
            margin-top:30px;
            border:1px solid #00d9ff;
            padding:20px;
            border-radius:10px;
            background:#181818;
        }

        footer{
            text-align:center;
            margin-top:20px;
            color:#888;
        }
    </style>

    <script>

        function showInfo(tool){

            let data = {

                "AWS EC2":
                `<h2>☁ AWS EC2</h2>
                <p>Amazon Elastic Compute Cloud (EC2) provides scalable virtual servers in the cloud.</p>

                <h3>Responsibilities</h3>
                <ul>
                    <li>Hosts Jenkins Server</li>
                    <li>Hosts Apache Tomcat</li>
                    <li>Runs Java Application</li>
                    <li>Provides Public IP Access</li>
                    <li>Acts as Deployment Environment</li>
                </ul>

                <h3>Benefits</h3>
                <ul>
                    <li>Scalable Infrastructure</li>
                    <li>Pay-as-you-go Pricing</li>
                    <li>Easy Remote Management</li>
                </ul>`,

                "Git":
                `<h2>📦 Git</h2>

                <p>Git is a distributed version control system used to track source code changes.</p>

                <h3>Common Commands</h3>

                <ul>
                    <li>git init</li>
                    <li>git add .</li>
                    <li>git commit -m "message"</li>
                    <li>git push origin master</li>
                    <li>git pull origin master</li>
                </ul>

                <h3>Advantages</h3>

                <ul>
                    <li>Version Tracking</li>
                    <li>Branching & Merging</li>
                    <li>Collaboration</li>
                </ul>`,

                "GitHub":
                `<h2>🐙 GitHub</h2>

                <p>GitHub hosts Git repositories and integrates with Jenkins through Webhooks.</p>

                <h3>Features</h3>

                <ul>
                    <li>Remote Repository Hosting</li>
                    <li>Pull Requests</li>
                    <li>Issue Tracking</li>
                    <li>GitHub Actions</li>
                    <li>Webhook Integration</li>
                </ul>

                <h3>Role in Project</h3>

                <ul>
                    <li>Stores Application Source Code</li>
                    <li>Triggers Jenkins Build Automatically</li>
                </ul>`,

                "Maven":
                `<h2>☕ Apache Maven</h2>

                <p>Maven is used to build and package Java applications.</p>

                <h3>Responsibilities</h3>

                <ul>
                    <li>Dependency Management</li>
                    <li>Project Build Automation</li>
                    <li>WAR Packaging</li>
                    <li>Testing Support</li>
                </ul>

                <h3>Common Commands</h3>

                <ul>
                    <li>mvn clean</li>
                    <li>mvn compile</li>
                    <li>mvn test</li>
                    <li>mvn package</li>
                </ul>`,

                "Jenkins":
                `<h2>⚙ Jenkins</h2>

                <p>Jenkins automates the entire CI/CD workflow.</p>

                <h3>Pipeline Stages</h3>

                <ol>
                    <li>Checkout Source Code</li>
                    <li>Build Application</li>
                    <li>Run Tests</li>
                    <li>Create WAR File</li>
                    <li>Deploy to Tomcat</li>
                </ol>

                <h3>Benefits</h3>

                <ul>
                    <li>Continuous Integration</li>
                    <li>Continuous Deployment</li>
                    <li>Automated Delivery</li>
                </ul>`,

                "Tomcat":
                `<h2>🚀 Apache Tomcat</h2>

                <p>Tomcat is a Java Servlet Container that runs JSP and Servlet applications.</p>

                <h3>Configuration</h3>

                <ul>
                    <li>Port: 8082</li>
                    <li>Deploy WAR Files</li>
                    <li>Hosts Java Web Applications</li>
                </ul>

                <h3>Deployment Path</h3>

                <pre>/opt/tomcat/webapps/</pre>`,

                "CI/CD Pipeline":
                `<h2>🔥 End-to-End CI/CD Pipeline</h2>

                <h3>Workflow</h3>

                <pre>
Developer
    │
    ▼
Git Commit
    │
    ▼
GitHub Repository
    │
    ▼
Webhook Trigger
    │
    ▼
Jenkins Pipeline
    │
    ▼
Maven Build
    │
    ▼
WAR Artifact
    │
    ▼
Apache Tomcat
    │
    ▼
Live Application
                </pre>

                <h3>Benefits</h3>

                <ul>
                    <li>Faster Releases</li>
                    <li>Reduced Human Errors</li>
                    <li>Automated Deployments</li>
                    <li>Continuous Feedback</li>
                </ul>`
            };

            document.getElementById("content").innerHTML=data[tool];
        }

    </script>

</head>

<body>

<div class="container">

    <h1>🚀 DevOps CI/CD Pipeline Project</h1>

    <p class="subtitle">
        End-to-End Continuous Integration & Continuous Deployment using AWS EC2, Git, GitHub, Maven, Jenkins and Tomcat
    </p>

    <div class="stats">

        <div class="card">
            <h2>AWS EC2</h2>
            <p>Cloud Infrastructure</p>
        </div>

        <div class="card">
            <h2>GitHub</h2>
            <p>Source Control</p>
        </div>

        <div class="card">
            <h2>Jenkins</h2>
            <p>CI/CD Automation</p>
        </div>

        <div class="card">
            <h2>Tomcat</h2>
            <p>Application Server</p>
        </div>

    </div>

    <div class="btn-container">

        <button onclick="showInfo('AWS EC2')">AWS EC2</button>

        <button onclick="showInfo('Git')">Git</button>

        <button onclick="showInfo('GitHub')">GitHub</button>

        <button onclick="showInfo('Maven')">Maven</button>

        <button onclick="showInfo('Jenkins')">Jenkins</button>

        <button onclick="showInfo('Tomcat')">Tomcat</button>

        <button onclick="showInfo('CI/CD Pipeline')">CI/CD Pipeline</button>

    </div>

    <div id="content">

        <h2>🚀 Welcome to DevOps CI/CD Pipeline Project</h2>

        <p>
            This project demonstrates a complete CI/CD implementation using modern DevOps tools.
        </p>

        <h3>Project Architecture</h3>

        <pre>
Developer
    │
Git Push
    │
GitHub
    │
Webhook
    │
Jenkins
    │
Maven Build
    │
WAR File
    │
Tomcat
    │
Live Application
        </pre>

        <h3>Technologies Used</h3>

        <ul>
            <li>AWS EC2</li>
            <li>Linux Administration</li>
            <li>Git</li>
            <li>GitHub</li>
            <li>Apache Maven</li>
            <li>Jenkins Pipeline</li>
            <li>Apache Tomcat</li>
            <li>Java JSP</li>
        </ul>

    </div>

    <div class="footer-card">

        <h2>👨‍💻 Project Owner</h2>

        <p><strong>Name:</strong> Veerendra Nayari</p>

        <p><strong>Role:</strong> DevOps Intern</p>

        <p><strong>Organization:</strong> JSpiders Rajajinagar</p>

        <p><strong>Project:</strong> End-to-End Java Web Application CI/CD Pipeline</p>

        <p><strong>Deployment URL:</strong> http://3.109.211.155:8082/app-name</p>

    </div>

</div>

<footer>
    DevOps Daily Task - 01 | CI/CD Pipeline Implementation
</footer>

</body>
</html>