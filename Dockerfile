# Use a imagem oficial do PHP como base
FROM php:8.1-apache

# Atualize o repositório e instale dependências necessárias
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

# Habilite o mod_rewrite do Apache (necessário para muitos frameworks PHP)
RUN a2enmod rewrite

# Copie os arquivos do projeto para o diretório raiz do Apache
COPY . /var/www/html/

# Exponha a porta 8000
EXPOSE 8000

# Defina o ServerName globalmente para evitar o aviso
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Mude a porta do Apache para 8000
RUN sed -i 's/80/8000/' /etc/apache2/ports.conf /etc/apache2/sites-available/000-default.conf

# Inicie o servidor Apache no primeiro plano (foreground)
CMD ["apache2-foreground"]
