ALTER TABLE dim_cliente
ADD COLUMN estado VARCHAR(50);

INSERT INTO dim_cliente (nome_cliente, cidade, estado)
VALUES
('João Silva', 'São Paulo', 'SP'),
('Maria Oliveira', 'Campinas', 'SP'),
('Carlos Souza', 'Rio de Janeiro', 'RJ'),
('Ana Costa', 'Belo Horizonte', 'MG'),
('Pedro Santos', 'Curitiba', 'PR'),
('Juliana Lima', 'Salvador', 'BA'),
('Lucas Pereira', 'Fortaleza', 'CE'),
('Fernanda Rocha', 'Recife', 'PE'),
('Ricardo Almeida', 'Porto Alegre', 'RS'),
('Patrícia Gomes', 'Brasília', 'DF'),

('Bruno Martins', 'São Paulo', 'SP'),
('Camila Ferreira', 'Guarulhos', 'SP'),
('Diego Carvalho', 'Niterói', 'RJ'),
('Larissa Ribeiro', 'Manaus', 'AM'),
('Rafael Dias', 'Natal', 'RN'),
('Amanda Barbosa', 'João Pessoa', 'PB'),
('Thiago Melo', 'Florianópolis', 'SC'),
('Vanessa Teixeira', 'Vitória', 'ES'),
('Gustavo Azevedo', 'Maceió', 'AL'),
('Beatriz Monteiro', 'Aracaju', 'SE'),

('Eduardo Nunes', 'Santos', 'SP'),
('Tatiane Lopes', 'Osasco', 'SP'),
('Felipe Cardoso', 'São Gonçalo', 'RJ'),
('Renata Vieira', 'Uberlândia', 'MG'),
('Marcelo Pinto', 'Londrina', 'PR'),
('Paula Fernandes', 'Feira de Santana', 'BA'),
('Vinicius Moraes', 'Caucaia', 'CE'),
('Aline Castro', 'Olinda', 'PE'),
('Leandro Freitas', 'Caxias do Sul', 'RS'),
('Cristiane Duarte', 'Taguatinga', 'DF'),

('Rodrigo Moreira', 'Sorocaba', 'SP'),
('Simone Batista', 'Jundiaí', 'SP'),
('André Correia', 'Petrópolis', 'RJ'),
('Débora Campos', 'Contagem', 'MG'),
('Márcio Gonçalves', 'Maringá', 'PR'),
('Cláudia Moura', 'Ilhéus', 'BA'),
('Fábio Rezende', 'Sobral', 'CE'),
('Elaine Pires', 'Caruaru', 'PE'),
('Sérgio Andrade', 'Pelotas', 'RS'),
('Monique Sales', 'Ceilândia', 'DF'),

('Alexandre Cunha', 'Barueri', 'SP'),
('Roberta Neves', 'Diadema', 'SP'),
('Leonardo Ramos', 'Volta Redonda', 'RJ'),
('Priscila Mendes', 'Betim', 'MG'),
('Henrique Farias', 'Ponta Grossa', 'PR'),
('Daniela Tavares', 'Juazeiro', 'BA'),
('Igor Martins', 'Juazeiro do Norte', 'CE'),
('Natália Cardoso', 'Paulista', 'PE'),
('Caio Albuquerque', 'Santa Maria', 'RS'),
('Michele Fonseca', 'Gama', 'DF');

SELECT * FROM dim_cliente;