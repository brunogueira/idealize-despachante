# Despachante Idealize · landing page

Página única (HTML + CSS + JS, sem dependências) do Despachante Idealize, Suzano/SP.

- `index.html`: a página inteira
- `assets/`: logo em SVG, imagem de prévia (og.png) e ícone; `assets/ref/` são só referências, não vão pro ar
- `build.sh`: gera `dist/` (o que é publicado) e `idealize-site.zip`

## Publicação automática

Todo push na `main` roda `.github/workflows/deploy.yml`: gera a `dist/` e envia por FTPS para a HostGator.
Cadastre em **Settings > Secrets and variables > Actions**:

| Segredo | Exemplo |
| --- | --- |
| `FTP_SERVER` | `ftp.seudominio.com.br` |
| `FTP_USERNAME` | usuário de FTP do cPanel |
| `FTP_PASSWORD` | senha desse usuário |
| `FTP_DIR` (opcional) | `public_html/` |
