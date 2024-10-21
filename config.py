ambiente = 'producao' #teste ou produção

if ambiente == 'teste':
    #CONFIG BANCO DE DADOS
    DB_HOST = 'localhost'
    DB_USER = 'root'
    DB_PASSWORD = 'senai'
    DB_NAME = 'blog'

if ambiente == 'producao':
    #CONFIG BANCO DE DADOS
    DB_HOST = 'SarahVenancio.mysql.pythonanywhere-services.com'
    DB_USER = 'SarahVenancio'
    DB_PASSWORD = 'meSiv@9184'
    DB_NAME = 'SarahVenancio$blog'

#CONFIG CHAVE SECRETA DE SESSÃO
SECRET_KEY = 'blog'

#ADM
MASTER_EMAIL = 'sarah.venancio@gmail.com'
MASTER_PASSWORD = 'meSiv@9184'