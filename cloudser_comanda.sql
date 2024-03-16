-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2024 a las 19:09:47
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cloudser_comanda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritocompra`
--

CREATE TABLE `carritocompra` (
  `idCarritoCompra` int(11) NOT NULL,
  `FolioOrden` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CantidadProductos` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TotalPedido` float DEFAULT NULL,
  `NotaEspecial` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idProductos` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idPreparacionAlimentos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idcomentarios` int(11) NOT NULL,
  `NombreCliente` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CorreoElectronico` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comentario` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Satisfaccion` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idCarritoCompra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idgenero` int(11) NOT NULL,
  `masculino` varchar(30) NOT NULL,
  `femenino` varchar(30) NOT NULL,
  `No binario` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `idingredientes` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrecioAdicional` int(11) DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio`
--

CREATE TABLE `negocio` (
  `idnegocio` int(11) NOT NULL,
  `Logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NombreAsociado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApellidoM` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApellidoP` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NombreNegocio` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RFC` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TipoSociedad` int(11) DEFAULT NULL,
  `RazonSocial` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Domicilio` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CorreoElectronico` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TelefonoCeular` int(11) DEFAULT NULL,
  `TipoEstablecimiento` int(11) DEFAULT NULL,
  `SitioWeb` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idProducto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparacionalimento`
--

CREATE TABLE `preparacionalimento` (
  `idPreparacionAlimento` int(11) NOT NULL,
  `Folio` int(11) DEFAULT NULL,
  `mesa` int(11) DEFAULT NULL,
  `producto` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `estatusAlimentos` int(11) DEFAULT NULL,
  `turno` int(11) DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproductos` int(11) NOT NULL,
  `imgProducto` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nombre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Precio` int(11) DEFAULT NULL,
  `Descripcion` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idIngredientes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `idsucursal` int(11) NOT NULL,
  `NombreSucursal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Domicilio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ciudad` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CodigoPostal` int(11) DEFAULT NULL,
  `TelefonoCelular` int(11) DEFAULT NULL,
  `SitiioWeb` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaCreacion` timestamp(6) NULL DEFAULT NULL,
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL,
  `idNegocio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidoM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ApellidoP` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CorreoElectronico` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TelefonoCel` int(11) DEFAULT NULL,
  `Genero` int(11) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `Contrasena` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ValidarContrasena` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Perfil` int(11) DEFAULT NULL,
  `FechaCreacion` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `FechaModificacion` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carritocompra`
--
ALTER TABLE `carritocompra`
  ADD PRIMARY KEY (`idCarritoCompra`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idcomentarios`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idgenero`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`idingredientes`);

--
-- Indices de la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`idnegocio`);

--
-- Indices de la tabla `preparacionalimento`
--
ALTER TABLE `preparacionalimento`
  ADD PRIMARY KEY (`idPreparacionAlimento`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproductos`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`idsucursal`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `idgenero` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
