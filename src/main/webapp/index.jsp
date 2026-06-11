<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps CI/CD Pipeline Project</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        .container {
            max-width: 1000px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
        }

        .btn-container {
            text-align: center;
            margin: 20px 0;
        }

        button {
            padding: 12px 20px;
            margin: 8px;
            border: none;
            border-radius: 5px;
            background-color: #3498db;
            color: white;
            cursor: pointer;
            font-size: 15px;
        }

        button:hover {
            background-color: #2980b9;
        }

        #content {
            margin-top: 20px;
            padding: 20px;
            background: #ecf0f1;
            border-radius: 8px;
            min-height: 180px;
        }

        footer {
            text-align: center;
            margin-top: 20px;
            color: #666;
        }
    </style>

    <script>
        function showInfo(tool) {

            let data = {
                "AWS EC2":
                    "<h2>AWS EC2</h2>" +
                    "<p>Amazon Elastic Compute Cloud (EC2) provides scalable virtual servers in the cloud.</p>" +
                    "<ul>" +
                    "<li>Hosts Jenkins, Tomcat and application.</li>" +
                    "<li>Provides public IP for accessing deployed applications.</li>" +
                    "<li>Supports Linux-based environments.</li>" +
                    "</ul>",

                "Git":
                    "<h2>Git</h2>" +
                    "<p>Git is a distributed version control system.</p>" +
                    "<ul>" +
                    "<li>Tracks source code changes.</li>" +
                    "<li>Supports branching and merging.</li>" +
                    "<li>Helps maintain project history.</li>" +
                    "</ul>",

                "GitHub":
                    "<h2>GitHub</h2>" +
                    "<p>GitHub is a cloud platform for hosting Git repositories.</p>" +
                    "<ul>" +
                    "<li>Stores source code remotely.</li>" +
                    "<li>Triggers Jenkins using Webhooks.</li>" +
                    "<li>Supports collaboration and code review.</li>" +
                    "</ul>",

                "Maven":
                    "<h2>Maven</h2>" +
                    "<p>Apache Maven is a build automation and dependency management tool.</p>" +
                    "<ul>" +
                    "<li>Compiles Java code.</li>" +
                    "<li>Downloads dependencies automatically.</li>" +
                    "<li>Generates WAR files for deployment.</li>" +
                    "</ul>",

                "Jenkins":
                    "<h2>Jenkins</h2>" +
                    "<p>Jenkins is an automation server used for CI/CD.</p>" +
                    "<ul>" +
                    "<li>Pulls code from GitHub.</li>" +
                    "<li>Builds application using Maven.</li>" +
                    "<li>Deploys WAR file to Tomcat.</li>" +
                    "<li>Automates the complete pipeline.</li>" +
                    "</ul>",

                "Tomcat":
                    "<h2>Apache Tomcat</h2>" +
                    "<p>Tomcat is a Java Servlet and JSP container.</p>" +
                    "<ul>" +
                    "<li>Runs Java web applications.</li>" +
                    "<li>Configured to run on port 8082.</li>" +
                    "<li>Hosts the generated WAR file.</li>" +
                    "</ul>",

                "CI/CD Pipeline":
                    "<h2>CI/CD Pipeline Workflow</h2>" +
                    "<ol>" +
                    "<li>Developer pushes code to GitHub.</li>" +
                    "<li>GitHub Webhook triggers Jenkins.</li>" +
                    "<li>Jenkins clones repository.</li>" +
                    "<li>Maven builds WAR file.</li>" +
                    "<li>Jenkins deploys WAR to Tomcat.</li>" +
                    "<li>Application becomes available on EC2:8082.</li>" +
                    "</ol>"
            };

            document.getElementById("content").innerHTML = data[tool];
        }
    </script>

</head>
<body>

<div class="container">

    <h1>🚀 DevOps CI/CD Pipeline Project</h1>

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
        <h2>Welcome</h2>
        <p>
            This Java Web Application demonstrates an end-to-end CI/CD Pipeline
            using AWS EC2, Git, GitHub, Maven, Jenkins and Tomcat.
            Click any tool above to learn its role in the project.
        </p>
    </div>

</div>

<footer>
    <p>DevOps Daily Task - 01 | CI/CD Pipeline Implementation</p>
</footer>

</body>
</html>