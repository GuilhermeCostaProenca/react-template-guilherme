#!/bin/bash

# ───────────────────────────────────────
# 🧼 Script: init:project
# Limpa arquivos do template e inicia um novo projeto com estrutura pronta
# Guilherme Costa Proença - 2025
# ───────────────────────────────────────

read -p "📝 Nome do novo projeto: " project_name
read -p "👤 Nome do autor: " author_name

current_date=$(date +%Y-%m-%d)

# 1. Gera README.md com base no modelo
cat << EOF > README.md
# $project_name

Criado por $author_name

## 📄 Descrição

> Descreva aqui o objetivo do projeto em 2-3 frases.

## 🚀 Tecnologias utilizadas

- [ ] React
- [ ] Tailwind
- [ ] Vite
- [ ] Outras...

## 📁 Estrutura de pastas

\`\`\`bash
src/
├── components/
├── pages/
├── services/
├── ...
\`\`\`

## ⚙️ Scripts disponíveis

- \`npm run dev\` — inicia ambiente de desenvolvimento
- \`npm run build\` — gera build de produção
- \`npm run commit\` — menu de commit com padrão semântico

## 📋 Histórico de mudanças

Veja em [CHANGELOG.md](./CHANGELOG.md)

## 📌 Status

🚧 Em desenvolvimento
EOF

echo "✅ README.md gerado."

# 2. Gera CHANGELOG.md
cat << EOF > CHANGELOG.md
# 📋 Changelog – $project_name

## [v0.0.0] – $current_date
### Iniciado
- Projeto criado a partir do template Guilherme.Dev
- Estrutura básica gerada automaticamente
EOF

echo "✅ CHANGELOG.md gerado."

# 3. Gera docs/decisoes.md
mkdir -p docs
cat << EOF > docs/decisoes.md
# 🧠 Decisões Técnicas – $project_name

## 📌 Setup inicial

- Template utilizado: react-template-guilherme
- Removidos arquivos desnecessários
- Commitizen + Husky já ativados

## 📌 Estrutura escolhida

- Organização por tipo (\`package by type\`)
- Estrutura modular e expansível para features

## 🔧 Próximos passos

- [ ] Definir as páginas do sistema
- [ ] Ajustar rotas
- [ ] Integrar com API
EOF

echo "✅ docs/decisoes.md gerado."

# 4. Remove arquivos desnecessários
echo "🧹 Removendo arquivos do template..."
rm -f LICENSE
rm -f .DS_Store
rm -f public/favicon.ico
rm -f README.template.md

# 5. Fim
echo -e "\n🚀 Projeto '$project_name' iniciado com sucesso!"
echo "🧠 Lembre-se de revisar os arquivos e começar o desenvolvimento."
