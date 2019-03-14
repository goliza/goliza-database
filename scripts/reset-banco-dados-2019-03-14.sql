-- LIMPAR PROSPECT
DELETE FROM Prospect

-- LIMPAR COMPARTILHAMENTOS
DELETE FROM GrupoInformacaoCompartilhamento
DELETE FROM Compartilhamento

-- LIMPAR EMPRESAS
DELETE FROM TelefoneEndereco
DELETE FROM Endereco
DELETE FROM Documento
DELETE FROM Email
DELETE FROM Telefone
DELETE FROM Contato
DELETE FROM EmpresaReceptora
DELETE FROM EmpresaGrupo

-- LIMPAR PENDENCIAS
DELETE FROM Pendencia

-- LIMPAR USUARIOS
DELETE FROM UsuarioReceptorCompartilhamento
DELETE FROM UsuarioEmpresa
DELETE FROM Usuario
DELETE FROM Token

-- CADASTRAR GRUPO
SET IDENTITY_INSERT EmpresaGrupo ON;
INSERT INTO EmpresaGrupo (idEmpresaGrupo, NomeEmpresaGrupo, idPlano, StatusValidada) VALUES(1, 'Liza', 1, 1);
INSERT INTO EmpresaGrupo (idEmpresaGrupo, NomeEmpresaGrupo, idPlano, StatusValidada) VALUES(2, 'T.F. Santos Inform�tica', 1, 1);
SET IDENTITY_INSERT EmpresaGrupo OFF;

-- CADASTRAR USUARIOS
SET IDENTITY_INSERT Usuario ON;
INSERT INTO Usuario (idUsuario, NomeUsuario, EmailUsuario, LoginUsuario, CPFUsuario, TelefoneUsuario, HashSenhaUsuario, IdEmpresaGrupo, idUsuarioStatus, idToken, TermosUsoUsuario, PoliticaPrivacidadeUsuario, idUsuarioCriacao, DataCriacao, idUsuarioUltimaAlteracao, DataUltimaAlteracao) VALUES(1, 'Paola', 'paola@goliza.com.br', 'paola@goliza.com.br', '111.111.111-11', '11 111111111', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1, 1, NULL, 1, 1, NULL, NULL, NULL, NULL);
INSERT INTO Usuario (idUsuario, NomeUsuario, EmailUsuario, LoginUsuario, CPFUsuario, TelefoneUsuario, HashSenhaUsuario, IdEmpresaGrupo, idUsuarioStatus, idToken, TermosUsoUsuario, PoliticaPrivacidadeUsuario, idUsuarioCriacao, DataCriacao, idUsuarioUltimaAlteracao, DataUltimaAlteracao) VALUES(2, 'Tiago Santos', 'tiago.santos@goliza.com.br', 'tiago.santos@goliza.com.br', '222.222.222-22', '11 222222222', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 2, 1, NULL, 1, 1, NULL, NULL, NULL, NULL);
SET IDENTITY_INSERT Usuario OFF;

-- CADASTRAR EMPRESAS
SET IDENTITY_INSERT EmpresaReceptora ON;
INSERT INTO EmpresaReceptora (idEmpresaReceptora, idEmpresaGrupo, DataUltimaAtualizacaoOficial, NomeFantasiaEmpresa, CNPJEmpresa, CNAEAtividadePrincipalEmpresa, CodigoOperacionalCVMEmpresa, CEPEmpresa, LogradouroEmpresa, NumeroEmpresa, ComplementoEmpresa, BairroEmpresa, CidadeEmpresa, UFEmpresa, DataConstituicaoEmpresa, DataSituacaoCadastralEmpresa, DataSituacaoEspecialEmpresa, GrupoEconomicoEmpresa, InscricaoEstadualEmpresa, InscricaoMunicipalEmpresa, NaturezaJuridicaEmpresa, PaisConstituicaoEmpresaEmpresa, PaisResidenciaFiscalEmpresa, PJDireitoPublicoEmpresa, PossuiPaisResidenciaFiscalEmpresa, PrincipalAtividadeEconomicaEmpresa, RazaoSocialEmpresa, RegimeTributarioEmpresa, SituacaoCadastralEmpresa, SituacaoEspecialEmpresa, SituacaoInscricaoEstadualEmpresa, SituacaoInscricaoMunicipalEmpresa, TipoCapitalEmpresa, ValorCapitalSocialEmpresa) VALUES(1, 1, NULL, 'LIZA', '30.936.471/0001-77', '6311900 - Tratamento de dados, provedores de serviços de aplicação e serviços de hospedagem na internet', NULL, '01443-010', 'R CAP ANTONIO ROSA', '409', 'SALA 210', 'JARDIM PAULISTANO', 'SAO PAULO', 'SP', NULL, NULL, NULL, NULL, NULL, NULL, '2062 - Sociedade Empresária Limitada', 1, NULL, 0, NULL, 39, 'LIZA CONEXOES DIGITAIS LTDA', 2, '', '', NULL, NULL, 1, 10434.78);
INSERT INTO EmpresaReceptora (idEmpresaReceptora, idEmpresaGrupo, DataUltimaAtualizacaoOficial, NomeFantasiaEmpresa, CNPJEmpresa, CNAEAtividadePrincipalEmpresa, CodigoOperacionalCVMEmpresa, CEPEmpresa, LogradouroEmpresa, NumeroEmpresa, ComplementoEmpresa, BairroEmpresa, CidadeEmpresa, UFEmpresa, DataConstituicaoEmpresa, DataSituacaoCadastralEmpresa, DataSituacaoEspecialEmpresa, GrupoEconomicoEmpresa, InscricaoEstadualEmpresa, InscricaoMunicipalEmpresa, NaturezaJuridicaEmpresa, PaisConstituicaoEmpresaEmpresa, PaisResidenciaFiscalEmpresa, PJDireitoPublicoEmpresa, PossuiPaisResidenciaFiscalEmpresa, PrincipalAtividadeEconomicaEmpresa, RazaoSocialEmpresa, RegimeTributarioEmpresa, SituacaoCadastralEmpresa, SituacaoEspecialEmpresa, SituacaoInscricaoEstadualEmpresa, SituacaoInscricaoMunicipalEmpresa, TipoCapitalEmpresa, ValorCapitalSocialEmpresa) VALUES(2, 2, NULL, 'TF INFORMATICA', '13.392.729/0001-00', '6201501 - Desenvolvimento de programas de computador sob encomenda', '12556', '03531-070', 'R FELICIO ANTONIO PEPE', '01', '', 'VILA NOVA SAVOIA', 'SAO PAULO', 'SP', NULL, NULL, NULL, NULL, NULL, NULL, '2305 - Empresa Individual de Responsabilidade Limitada (de Natureza Empresári', 1, NULL, NULL, NULL, 5, 'T.F. SANTOS INFORMATICA EIRELI', 3, '', '', NULL, NULL, NULL, 88000.00);
SET IDENTITY_INSERT EmpresaReceptora OFF;

-- CADASTRAR USUARIO EMPRESA
INSERT INTO UsuarioEmpresa (idEmpresa, idUsuario, idUsuarioCriacao, DataCriacao, idUsuarioUltimaAlteracao, DataUltimaAlteracao) VALUES(1, 1, NULL, NULL, NULL, NULL);
INSERT INTO UsuarioEmpresa (idEmpresa, idUsuario, idUsuarioCriacao, DataCriacao, idUsuarioUltimaAlteracao, DataUltimaAlteracao) VALUES(2, 2, NULL, NULL, NULL, NULL);