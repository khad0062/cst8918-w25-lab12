CST8918 - DevOps: Infrastructure as Code  
Prof. Robert McKenney

# Lab 12: Terraform CI/CD on Azure with GitHub Actions

## Team Members
- Nikolai Semko         - https://github.com/Nikolai-Semko/ - semk0001
- Nirajan Khadka        - https://github.com/khad0062/      - khad0062 
- Sai Karthick Kalidoss - https://github.com/Saikarthick07     - Saikarthick07

Note: Unable to get the work done due to credentail issues.


### Project folder structure

The project folder structure look like this: 

```plaintext
cst8918-w25-lab12
├── .github
│   └── workflows
│       ├── infra-ci-cd.yml
│       ├── infra-drift-detection.yml
│       └── infra-static-tests.yml
├── app
│   └── .gitkeep
├── infra
│   ├── az-federated-credential-params
|   |   ├── branch-main.json
│   │   ├── production-deploy.json
|   |   └── pull-request.json
│   ├── tf-app
│   |   ├── .tflint.hcl
│   │   ├── main.tf
│   │   ├── outputs.tf
|   │   ├── terraform.tf
│   │   └── variables.tf
│   └── tf-backend
│       └── main.tf
├── screenshots
│   ├── pr-checks.png
│   └── pr-tf-plan.png
├── .editorconfig
├── .gitignore
└── README.md
```


<img width="1799" height="835" alt="image" src="https://github.com/user-attachments/assets/d2de93fb-161f-436d-8491-594f16330337" />

<img width="1897" height="658" alt="image" src="https://github.com/user-attachments/assets/e1454b0a-ad15-46df-92f0-87847c08643d" />


<img width="1914" height="799" alt="image" src="https://github.com/user-attachments/assets/5f7f94cc-8586-4887-b18e-cb09ef60065a" />

