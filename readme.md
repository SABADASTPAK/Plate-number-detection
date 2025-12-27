# 🚗 License Plate OCR using MATLAB

A MATLAB-based system for **License Plate Detection and Character Recognition (OCR)** using classical image processing techniques.  
This project detects the plate region in a vehicle image, extracts individual characters, and recognizes them using template matching.

---

## 📌 Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Methodology](#methodology)
  - [1️⃣ Plate Detection](#1️⃣-plate-detection)
  - [2️⃣ Character Detection \& Recognition](#2️⃣-character-detection--recognition)
  - [3️⃣ Template Creation](#3️⃣-template-creation)
- [Results](#results)
- [Requirements](#requirements)
- [How to Run](#how-to-run)
- [Possible Improvements](#possible-improvements)
- [Conclusion](#conclusion)
- [License](#license)

---

## 📖 Overview
This project demonstrates a simple yet effective **OCR pipeline** for recognizing alphanumeric characters on vehicle license plates.


---

## ⭐ Features
✔️ Detects license plate region  
✔️ Segments individual characters  
✔️ Recognizes characters using template matching  
✔️ Works with MATLAB built-in image processing tools  

---

## 🗂️ Project Structure

├── Plate_detection.m % Detects license plate area
├── Letter_detection.m % Segments & recognizes characters
├── Template_creation.m % Builds character templates
├── README.md % Project documentation
└── sample_images/ % (optional) input images


---

## 🧠 Methodology

### 1️⃣ Plate Detection
- Convert input image to **grayscale**
- Apply **Prewitt edge detection**
- Use `regionprops` to locate the **bounding box** of the plate

---

### 2️⃣ Character Detection & Recognition
- Extract character regions using **connected components**
- Resize each character to match template size
- Compute **correlation** with stored templates
- Select character with highest correlation score

---

### 3️⃣ Template Creation
- Prepare templates for:
  - Letters **A–Z**
  - Digits **0–9**
- Store templates in a cell array for fast access

---

## 🖼️ Results


![Result Example](images/results.png)


---

## 📦 Requirements
- MATLAB
- Image Processing Toolbox

---

## ▶️ How to Run
1️⃣ Add all `.m` files to MATLAB path  
2️⃣ Run the **main script**  
3️⃣ Provide an input license plate image  
4️⃣ View detected and recognized results

---

## 🚀 Possible Improvements
- Improve robustness under:
  - Noise
  - Low lighting
  - Plate rotation
- Replace template matching with:
  - Machine learning classifiers
  - Deep learning OCR (CNN)
- Better preprocessing techniques

---

## ✅ Conclusion
This project provides a complete MATLAB-based OCR workflow for license plate recognition.  
It introduces classical techniques and forms a solid baseline for more advanced systems.

---

## 📝 License
This project is free to use for educational and research purposes.  
(You may replace this with MIT / GPL / custom license if needed.)

---

### ⭐ If you find this useful, give the repository a star!
