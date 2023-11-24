-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: enterpriseerp
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `cargoId` int NOT NULL AUTO_INCREMENT,
  `cargocoNome` varchar(50) DEFAULT NULL,
  `cargoDescricao` varchar(150) DEFAULT NULL,
  `cargoSalario` decimal(18,6) DEFAULT NULL,
  `cargoCbo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cargoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cep`
--

DROP TABLE IF EXISTS `cep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cep` (
  `cepId` int NOT NULL AUTO_INCREMENT,
  `cepNumero` varchar(8) DEFAULT NULL,
  `cepLogradouro` varchar(100) DEFAULT NULL,
  `cepComplemento` varchar(100) DEFAULT NULL,
  `cepBairro` varchar(100) DEFAULT NULL,
  `cepMunicipio` varchar(100) DEFAULT NULL,
  `cepUF` varchar(2) DEFAULT NULL,
  `cepCodigoIbgeMunicipio` int DEFAULT NULL,
  `cepCodigoGia` int DEFAULT NULL,
  `cepDdd` varchar(2) DEFAULT NULL,
  `cepCodigoSiafi` int DEFAULT NULL,
  PRIMARY KEY (`cepId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cep`
--

LOCK TABLES `cep` WRITE;
/*!40000 ALTER TABLE `cep` DISABLE KEYS */;
/*!40000 ALTER TABLE `cep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfop`
--

DROP TABLE IF EXISTS `cfop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cfop` (
  `cfopId` int NOT NULL AUTO_INCREMENT,
  `cfopCodigo` int DEFAULT NULL,
  `cfopDescricao` varchar(150) DEFAULT NULL,
  `cfopObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cfopId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfop`
--

LOCK TABLES `cfop` WRITE;
/*!40000 ALTER TABLE `cfop` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `clienteId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `clienteDataCadastro` date DEFAULT NULL,
  `clienteTaxaDesconto` decimal(18,6) DEFAULT NULL,
  `clienteLimiteCredito` decimal(18,6) DEFAULT NULL,
  `clienteObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`clienteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnae`
--

DROP TABLE IF EXISTS `cnae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cnae` (
  `cnaeId` int NOT NULL AUTO_INCREMENT,
  `cnaeCodigo` varchar(7) DEFAULT NULL,
  `cnaeDenominacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cnaeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnae`
--

LOCK TABLES `cnae` WRITE;
/*!40000 ALTER TABLE `cnae` DISABLE KEYS */;
/*!40000 ALTER TABLE `cnae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaborador`
--

DROP TABLE IF EXISTS `colaborador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaborador` (
  `colaboradorId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int DEFAULT NULL,
  `cargoId` int DEFAULT NULL,
  `setorId` int DEFAULT NULL,
  `colaboradorMatricula` varchar(10) DEFAULT NULL,
  `colaboradorCadastro` date DEFAULT NULL,
  `colaboradorAdmissao` date DEFAULT NULL,
  `colaboradorDemissao` date DEFAULT NULL,
  `colaboradorCtpsNumero` varchar(10) DEFAULT NULL,
  `colaboradorCtpsSerie` varchar(10) DEFAULT NULL,
  `colaboradorCtpsDataExpedicao` date DEFAULT NULL,
  `colaboradorCtpsUf` varchar(2) DEFAULT NULL,
  `colaboradorObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`colaboradorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaborador`
--

LOCK TABLES `colaborador` WRITE;
/*!40000 ALTER TABLE `colaborador` DISABLE KEYS */;
/*!40000 ALTER TABLE `colaborador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contador`
--

DROP TABLE IF EXISTS `contador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contador` (
  `contadorId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `contadorCrc` varchar(15) DEFAULT NULL,
  `contadorUF` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`contadorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contador`
--

LOCK TABLES `contador` WRITE;
/*!40000 ALTER TABLE `contador` DISABLE KEYS */;
/*!40000 ALTER TABLE `contador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csosn`
--

DROP TABLE IF EXISTS `csosn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csosn` (
  `csosnId` int NOT NULL AUTO_INCREMENT,
  `csosnCodigo` varchar(3) DEFAULT NULL,
  `csosnDescricao` varchar(150) DEFAULT NULL,
  `csosnObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`csosnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csosn`
--

LOCK TABLES `csosn` WRITE;
/*!40000 ALTER TABLE `csosn` DISABLE KEYS */;
/*!40000 ALTER TABLE `csosn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cstcofins`
--

DROP TABLE IF EXISTS `cstcofins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cstcofins` (
  `cstCofinsId` int NOT NULL AUTO_INCREMENT,
  `cstCofinsCodigo` varchar(2) DEFAULT NULL,
  `cstCofinsDescricao` varchar(150) DEFAULT NULL,
  `cstCofinsObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cstCofinsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cstcofins`
--

LOCK TABLES `cstcofins` WRITE;
/*!40000 ALTER TABLE `cstcofins` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstcofins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csticms`
--

DROP TABLE IF EXISTS `csticms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csticms` (
  `cstIcmsId` int NOT NULL AUTO_INCREMENT,
  `cstIcmsCodigo` varchar(2) DEFAULT NULL,
  `cstIcmsDescricao` varchar(150) DEFAULT NULL,
  `cstIcmsObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cstIcmsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csticms`
--

LOCK TABLES `csticms` WRITE;
/*!40000 ALTER TABLE `csticms` DISABLE KEYS */;
/*!40000 ALTER TABLE `csticms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cstipi`
--

DROP TABLE IF EXISTS `cstipi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cstipi` (
  `cstipiId` int NOT NULL AUTO_INCREMENT,
  `cstipiCodigo` varchar(2) DEFAULT NULL,
  `cstipiDescricao` varchar(150) DEFAULT NULL,
  `cstipiObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cstipiId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cstipi`
--

LOCK TABLES `cstipi` WRITE;
/*!40000 ALTER TABLE `cstipi` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstipi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cstpis`
--

DROP TABLE IF EXISTS `cstpis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cstpis` (
  `cstpisId` int NOT NULL AUTO_INCREMENT,
  `cstpisCodigo` varchar(2) DEFAULT NULL,
  `cstpisDescricao` varchar(150) DEFAULT NULL,
  `cstpisObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cstpisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cstpis`
--

LOCK TABLES `cstpis` WRITE;
/*!40000 ALTER TABLE `cstpis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cstpis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadocivil`
--

DROP TABLE IF EXISTS `estadocivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadocivil` (
  `estadocivilId` int NOT NULL AUTO_INCREMENT,
  `estadocivilDescricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`estadocivilId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadocivil`
--

LOCK TABLES `estadocivil` WRITE;
/*!40000 ALTER TABLE `estadocivil` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadocivil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `fornecedorId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `fornecedorcoDataCadastro` date DEFAULT NULL,
  `fornecedorObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`fornecedorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao`
--

DROP TABLE IF EXISTS `funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcao` (
  `funcaoId` int NOT NULL AUTO_INCREMENT,
  `funcaoNome` varchar(100) DEFAULT NULL,
  `funcaoDescricao` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`funcaoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `munId` int NOT NULL AUTO_INCREMENT,
  `munIdUF` int DEFAULT NULL,
  `munNome` varchar(100) DEFAULT NULL,
  `munCodigoIbge` int DEFAULT NULL,
  `munCodigoReceitaFederal` int DEFAULT NULL,
  `munCodigoEstadual` int DEFAULT NULL,
  `munCodigoGia` int DEFAULT NULL,
  `munCodigoSiafi` int DEFAULT NULL,
  PRIMARY KEY (`munId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ncm`
--

DROP TABLE IF EXISTS `ncm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ncm` (
  `ncmId` int NOT NULL AUTO_INCREMENT,
  `ncmCodigo` varchar(8) DEFAULT NULL,
  `ncmDescricao` varchar(150) DEFAULT NULL,
  `ncmObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ncmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ncm`
--

LOCK TABLES `ncm` WRITE;
/*!40000 ALTER TABLE `ncm` DISABLE KEYS */;
/*!40000 ALTER TABLE `ncm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivelformacao`
--

DROP TABLE IF EXISTS `nivelformacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivelformacao` (
  `nivelformacaoId` int NOT NULL AUTO_INCREMENT,
  `nivelformacaoNome` varchar(50) DEFAULT NULL,
  `nivelformacaoDescricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`nivelformacaoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivelformacao`
--

LOCK TABLES `nivelformacao` WRITE;
/*!40000 ALTER TABLE `nivelformacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivelformacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papelfuncao`
--

DROP TABLE IF EXISTS `papelfuncao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papelfuncao` (
  `papelfuncao` int NOT NULL AUTO_INCREMENT,
  `regraId` int NOT NULL,
  `funcaoId` int NOT NULL,
  `papelfuncaoHabilitado` varchar(1) DEFAULT NULL,
  `papelfuncaoInserir` varchar(1) DEFAULT NULL,
  `papelfuncaoAlterar` varchar(1) DEFAULT NULL,
  `papelfuncaoExcluir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`papelfuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papelfuncao`
--

LOCK TABLES `papelfuncao` WRITE;
/*!40000 ALTER TABLE `papelfuncao` DISABLE KEYS */;
/*!40000 ALTER TABLE `papelfuncao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `pessoaId` int NOT NULL AUTO_INCREMENT,
  `pessoaNome` varchar(100) DEFAULT NULL,
  `pessoaTipo` varchar(1) DEFAULT NULL,
  `pessoaSite` varchar(100) DEFAULT NULL,
  `pessoaEmail` varchar(100) DEFAULT NULL,
  `pessoaCliente` varchar(1) DEFAULT NULL,
  `pessoaFornecedor` varchar(1) DEFAULT NULL,
  `pessoaTransportadora` varchar(1) DEFAULT NULL,
  `pessoaColaborador` varchar(1) DEFAULT NULL,
  `pessoaContador` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`pessoaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoacontato`
--

DROP TABLE IF EXISTS `pessoacontato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoacontato` (
  `pessoacontatoId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int DEFAULT NULL,
  `pessoacontatoNome` varchar(100) DEFAULT NULL,
  `pessoacontatoEmail` varchar(100) DEFAULT NULL,
  `pessoacontatoObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`pessoacontatoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoacontato`
--

LOCK TABLES `pessoacontato` WRITE;
/*!40000 ALTER TABLE `pessoacontato` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoacontato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoaendereco`
--

DROP TABLE IF EXISTS `pessoaendereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoaendereco` (
  `pessoaenderecoId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` varchar(45) NOT NULL,
  `pessoaenderecoLogradouro` varchar(100) DEFAULT NULL,
  `pessoaenderecoNumero` varchar(4) DEFAULT NULL,
  `pessoaenderecoBairro` varchar(100) DEFAULT NULL,
  `pessoaenderecoCidade` varchar(100) DEFAULT NULL,
  `pessoaenderecoEstado` varchar(2) DEFAULT NULL,
  `pessoaenderecoCep` varchar(8) DEFAULT NULL,
  `pessoaenderecoComplemento` varchar(100) DEFAULT NULL,
  `pessoaenderecoCodigoIbge` int DEFAULT NULL,
  `pessoaenderecoPrincipal` varchar(1) DEFAULT NULL,
  `pessoaenderecoEntrega` varchar(1) DEFAULT NULL,
  `pessoaenderecoCobranca` varchar(1) DEFAULT NULL,
  `pessoaenderecoCorrespondencia` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`pessoaenderecoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoaendereco`
--

LOCK TABLES `pessoaendereco` WRITE;
/*!40000 ALTER TABLE `pessoaendereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoaendereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoafisica`
--

DROP TABLE IF EXISTS `pessoafisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoafisica` (
  `pessoafisicaId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int DEFAULT NULL,
  `nivelformacaoId` int DEFAULT NULL,
  `estadocivilId` int DEFAULT NULL,
  `pessoafisicaCpf` varchar(11) DEFAULT NULL,
  `pessoafisicaRg` varchar(20) DEFAULT NULL,
  `pessoafisicaOrgaoRg` varchar(20) DEFAULT NULL,
  `pessoafisicaDataEmissaoRg` date DEFAULT NULL,
  `pessoafisicaDataNascimento` date DEFAULT NULL,
  `pessoafisicaGenero` varchar(1) DEFAULT NULL,
  `pessoafisicaEtnia` varchar(1) DEFAULT NULL,
  `pessoafisicaNacionalidade` varchar(100) DEFAULT NULL,
  `pessoafisicaNaturalidade` varchar(100) DEFAULT NULL,
  `pessoafisicaNomePai` varchar(100) DEFAULT NULL,
  `pessoafisicaNomeMae` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pessoafisicaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoafisica`
--

LOCK TABLES `pessoafisica` WRITE;
/*!40000 ALTER TABLE `pessoafisica` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoafisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoajuridica`
--

DROP TABLE IF EXISTS `pessoajuridica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoajuridica` (
  `pessoajuridicaId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int DEFAULT NULL,
  `pessoajuridicaCnpj` varchar(14) DEFAULT NULL,
  `pessoajuridicaNomeFantasia` varchar(100) DEFAULT NULL,
  `pessoajuridicaInscricaoEstadual` varchar(45) DEFAULT NULL,
  `pessoajuridicaInscricaoMunicipal` varchar(45) DEFAULT NULL,
  `pessoajuridicaDataConstituicao` date DEFAULT NULL,
  `pessoajuridicaTipoRegime` varchar(1) DEFAULT NULL,
  `pessoajuridicaCrt` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`pessoajuridicaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoajuridica`
--

LOCK TABLES `pessoajuridica` WRITE;
/*!40000 ALTER TABLE `pessoajuridica` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoajuridica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoatelefone`
--

DROP TABLE IF EXISTS `pessoatelefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoatelefone` (
  `pessoatelefoneId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `pessoatelefoneTipo` varchar(1) DEFAULT NULL,
  `pessoatelefoneNumero` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pessoatelefoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoatelefone`
--

LOCK TABLES `pessoatelefone` WRITE;
/*!40000 ALTER TABLE `pessoatelefone` DISABLE KEYS */;
/*!40000 ALTER TABLE `pessoatelefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regra`
--

DROP TABLE IF EXISTS `regra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regra` (
  `regraId` int NOT NULL AUTO_INCREMENT,
  `regraNome` varchar(50) DEFAULT NULL,
  `regraDescricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`regraId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regra`
--

LOCK TABLES `regra` WRITE;
/*!40000 ALTER TABLE `regra` DISABLE KEYS */;
/*!40000 ALTER TABLE `regra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setor`
--

DROP TABLE IF EXISTS `setor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `setor` (
  `setorId` int NOT NULL AUTO_INCREMENT,
  `setorNome` varchar(50) DEFAULT NULL,
  `setorDescricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`setorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setor`
--

LOCK TABLES `setor` WRITE;
/*!40000 ALTER TABLE `setor` DISABLE KEYS */;
/*!40000 ALTER TABLE `setor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportadora` (
  `transpId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `transpDataCadastro` date DEFAULT NULL,
  `transpObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`transpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uf` (
  `ufId` int NOT NULL AUTO_INCREMENT,
  `ufSigla` varchar(2) DEFAULT NULL,
  `ufNome` varchar(100) DEFAULT NULL,
  `ufCodigoIbge` int DEFAULT NULL,
  PRIMARY KEY (`ufId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usuarioId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `regraId` int NOT NULL,
  `usuarioLogin` varchar(25) DEFAULT NULL,
  `usuarioSenha` varchar(8) DEFAULT NULL,
  `usuarioAdministrador` varchar(1) DEFAULT NULL,
  `usuarioDataCadastro` date DEFAULT NULL,
  PRIMARY KEY (`usuarioId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `vendedorId` int NOT NULL AUTO_INCREMENT,
  `pessoaId` int NOT NULL,
  `vendedorComissao` decimal(18,6) DEFAULT NULL,
  `vendedorMetaVenda` decimal(18,6) DEFAULT NULL,
  `vendedorObservacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`vendedorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'enterpriseerp'
--

--
-- Dumping routines for database 'enterpriseerp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 20:41:05
