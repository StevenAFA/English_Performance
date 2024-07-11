<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="English_Performance.Views.index" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ecosistema de Asistencia Digital Integral</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding-top: 20px;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .component {
            margin: 10px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: white;
        }
        .component h3 {
            margin-top: 0;
        }
        .log {
            background-color: #f9f9f9;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            max-height: 200px;
            overflow-y: auto;
            background-color: white;
        }
    </style>
</head>
<body>
    <header class="mb-4">
        <h1>Ecosistema de Asistencia Digital Integral (EADI)</h1>
    </header>

    <div class="container">
        <section>
            <h2 class="text-success">Componentes del Ecosistema</h2>

            <div class="component" id="platform">
                <h3>Plataforma Central de Gestión Inteligente</h3>
                <p>Unifica la supervisión y gestión de todos los sistemas tecnológicos de la empresa en una plataforma centralizada.</p>
                <button class="btn btn-success mr-2" onclick="managePlatform()">Gestionar Plataforma</button>
                <button class="btn btn-secondary" onclick="viewPlatformStatus()">Ver Estado de la Plataforma</button>
            </div>

            <div class="component" id="predictiveAI">
                <h3>Módulo de Inteligencia Artificial Predictiva</h3>
                <p>Utiliza algoritmos de aprendizaje automático para predecir fallos, optimizar el rendimiento y planificar el mantenimiento preventivo.</p>
                <button class="btn btn-success mr-2" onclick="runPredictiveAI()">Ejecutar IA Predictiva</button>
                <button class="btn btn-secondary" onclick="viewPredictions()">Ver Predicciones</button>
            </div>

            <div class="component" id="iotNetwork">
                <h3>Red de Sensores IoT</h3>
                <p>Implementa sensores IoT para recopilar datos en tiempo real sobre el estado y rendimiento de los sistemas.</p>
                <button class="btn btn-success mr-2" onclick="monitorIoTNetwork()">Monitorear Red IoT</button>
                <button class="btn btn-secondary" onclick="viewSensorData()">Ver Datos de Sensores</button>
            </div>

            <div class="component" id="bigDataAnalytics">
                <h3>Análisis de Big Data</h3>
                <p>Procesa y analiza grandes volúmenes de datos para identificar patrones, tendencias y oportunidades de mejora.</p>
                <button class="btn btn-success mr-2" onclick="analyzeBigData()">Analizar Big Data</button>
                <button class="btn btn-secondary" onclick="viewAnalytics()">Ver Análisis</button>
            </div>

            <div class="component" id="digitalAssistant">
                <h3>Asistente Digital Inteligente</h3>
                <p>Asistente virtual basado en IA para apoyar a los empleados en la resolución de problemas técnicos y toma de decisiones.</p>
                <button class="btn btn-success mr-2" onclick="activateAssistant()">Activar Asistente Digital</button>
                <button class="btn btn-secondary" onclick="askAssistant()">Hacer Pregunta al Asistente</button>
            </div>
        </section>

        <section class="mt-4">
            <h2 class="text-success">Registro de Actividades</h2>
            <div class="log p-3" id="log"></div>
        </section>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
        function logMessage(message) {
            const logDiv = document.getElementById("log");
            const newMessage = document.createElement("div");
            newMessage.textContent = message;
            logDiv.appendChild(newMessage);
            logDiv.scrollTop = logDiv.scrollHeight;
        }

        function managePlatform() {
            logMessage("Gestionando la Plataforma Central de Gestión Inteligente...");
            setTimeout(() => {
                logMessage("Plataforma gestionada exitosamente.");
            }, 2000);
        }

        function viewPlatformStatus() {
            logMessage("Estado de la Plataforma: Todos los sistemas están operativos y funcionando correctamente.");
        }

        function runPredictiveAI() {
            logMessage("Ejecutando Módulo de Inteligencia Artificial Predictiva...");
            setTimeout(() => {
                const prediction = "Se predice que el sistema A puede fallar en 2 días.";
                logMessage(`Predicción completada: ${prediction}`);
                localStorage.setItem('lastPrediction', prediction);
            }, 3000);
        }

        function viewPredictions() {
            const prediction = localStorage.getItem('lastPrediction');
            if (prediction) {
                logMessage(`Última Predicción: ${prediction}`);
            } else {
                logMessage("No hay predicciones recientes.");
            }
        }

        function monitorIoTNetwork() {
            logMessage("Monitoreando Red de Sensores IoT...");
            setTimeout(() => {
                const sensorData = "Sensores monitoreados. Todos los parámetros dentro de los límites normales.";
                logMessage(sensorData);
                localStorage.setItem('lastSensorData', sensorData);
            }, 2500);
        }

        function viewSensorData() {
            const sensorData = localStorage.getItem('lastSensorData');
            if (sensorData) {
                logMessage(`Datos de Sensores: ${sensorData}`);
            } else {
                logMessage("No hay datos de sensores recientes.");
            }
        }

        function analyzeBigData() {
            logMessage("Analizando Big Data...");
            setTimeout(() => {
                const analysisResult = "Análisis completado: Tendencia de aumento en el rendimiento del sistema.";
                logMessage(analysisResult);
                localStorage.setItem('lastAnalysisResult', analysisResult);
            }, 4000);
        }

        function viewAnalytics() {
            const analysisResult = localStorage.getItem('lastAnalysisResult');
            if (analysisResult) {
                logMessage(`Último Análisis: ${analysisResult}`);
            } else {
                logMessage("No hay análisis recientes.");
            }
        }

        function activateAssistant() {
            logMessage("Activando Asistente Digital Inteligente...");
            setTimeout(() => {
                logMessage("Asistente Digital activado y listo para ayudar.");
            }, 1500);
        }

        function askAssistant() {
            const question = prompt("¿Cuál es tu pregunta para el Asistente Digital?");
            if (question) {
                logMessage(`Pregunta: ${question}`);
                setTimeout(() => {
                    const response = generateAssistantResponse(question);
                    logMessage(`Respuesta del Asistente: ${response}`);
                }, 2000);
            } else {
                logMessage("No se hizo ninguna pregunta al Asistente Digital.");
            }
        }

        function generateAssistantResponse(question) {
            const responses = {
                "¿cuál es el estado de la plataforma?": "La plataforma está operativa con todos los sistemas funcionando correctamente.",
                "¿cuáles son las predicciones de fallos?": "Se predice que el sistema A puede fallar en 2 días.",
                "¿cuáles son los datos de los sensores?": "Todos los sensores están dentro de los límites normales.",
                "¿qué dice el análisis de big data?": "El análisis muestra una tendencia de aumento en el rendimiento del sistema.",
                "¿cómo puedo optimizar el rendimiento?": "Para optimizar el rendimiento, se recomienda revisar los sistemas A y B y actualizar el firmware de los sensores IoT.",
                "¿cuál es el estado del sistema x?": "El sistema X muestra un rendimiento óptimo. No se requieren acciones inmediatas.",
                "¿cuál es el estado del asistente?": "El Asistente Digital está activo y listo para ayudar."
            };

            const lowerQuestion = question.toLowerCase();
            return responses[lowerQuestion] || "No tengo una respuesta para esa pregunta. Por favor, intenta con otra.";
        }
    </script>
</body>
</html>