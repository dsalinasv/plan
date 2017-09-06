object srvMethods: TsrvMethods
  OldCreateOrder = False
  Height = 606
  Width = 1372
  object cntData: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=C:\APPDATA\PLAN.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 48
    Top = 8
  end
  object dspEmpleados: TDataSetProvider
    DataSet = dtsEmpleados
    UpdateMode = upWhereChanged
    Left = 808
    Top = 104
  end
  object dtsEmpleados: TSQLDataSet
    CommandText = 'select * from EMPLEADOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 808
    Top = 56
    object dtsEmpleadosID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsEmpleadosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 100
    end
    object dtsEmpleadosID_PERFIL: TStringField
      FieldName = 'ID_PERFIL'
      Size = 38
    end
  end
  object dtsLineasDisciplinares: TSQLDataSet
    CommandText = 
      'select * from LINEAS_DISCIPLINARES where ID_AREA_CURRICULAR = :I' +
      'D_AREA_CURRICULAR'
    DataSource = dsAreasCurriculares
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_AREA_CURRICULAR'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 648
    Top = 56
    object dtsLineasDisciplinaresID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsLineasDisciplinaresNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dspAreasCurriculares: TDataSetProvider
    DataSet = dtsAreasCurriculares
    UpdateMode = upWhereChanged
    Left = 536
    Top = 104
  end
  object dtsAreasCurriculares: TSQLDataSet
    CommandText = 'select * from AREAS_CURRICULARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 536
    Top = 56
    object dtsAreasCurricularesID_AREA_CURRICULAR: TStringField
      FieldName = 'ID_AREA_CURRICULAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsAreasCurricularesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dspComponentesCurriculares: TDataSetProvider
    DataSet = dtsComponentesCurriculares
    UpdateMode = upWhereChanged
    Left = 408
    Top = 104
  end
  object dtsComponentesCurriculares: TSQLDataSet
    CommandText = 'select * from COMPONENTES_CURRICULARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 408
    Top = 56
    object dtsComponentesCurricularesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsComponentesCurricularesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dspSecretariosAcademicos: TDataSetProvider
    DataSet = dtsSecretariosAcademicos
    UpdateMode = upWhereChanged
    Left = 264
    Top = 104
  end
  object dtsSecretariosAcademicos: TSQLDataSet
    CommandText = 'select * from EMPLEADOS where ID_PERFIL = 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 264
    Top = 56
    object dtsSecretariosAcademicosID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsSecretariosAcademicosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object dspModalidades: TDataSetProvider
    DataSet = dtsModalidades
    UpdateMode = upWhereChanged
    Left = 152
    Top = 104
  end
  object dtsModalidades: TSQLDataSet
    CommandText = 'select * from MODALIDADES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 152
    Top = 56
    object dtsModalidadesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsModalidadesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dtsPlanes: TSQLDataSet
    CommandText = 'select * from PLANES where ID_CICLO_ESCOLAR = :ID_CICLO_ESCOLAR'
    DataSource = dsCiclosEscolares
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_CICLO_ESCOLAR'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 128
    Top = 248
    object dtsPlanesID_PLAN: TStringField
      FieldName = 'ID_PLAN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsPlanesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 10
    end
    object dtsPlanesID_CICLO_ESCOLAR: TStringField
      FieldName = 'ID_CICLO_ESCOLAR'
      Required = True
      Size = 38
    end
  end
  object dtsUnidadesAcademicas: TSQLDataSet
    CommandText = 
      'select * from UNIDADES_ACADEMICAS where ID_UNIDAD_REGIONAL = :ID' +
      '_UNIDAD_REGIONAL'
    DataSource = dsUnidadesRegionales
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_UNIDAD_REGIONAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 48
    Top = 152
    object dtsUnidadesAcademicasID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsUnidadesAcademicasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 100
    end
    object dtsUnidadesAcademicasID_UNIDAD_REGIONAL: TStringField
      FieldName = 'ID_UNIDAD_REGIONAL'
      Required = True
      Size = 38
    end
  end
  object dtsPlaneacionesGenerales: TSQLDataSet
    CommandText = 'select * from PLANEACIONES_GENERALES where ID_PLAN = :ID_PLAN'
    DataSource = dsPlanes
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLAN'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 224
    Top = 248
    object dtsPlaneacionesGeneralesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsPlaneacionesGeneralesID_PLAN: TStringField
      FieldName = 'ID_PLAN'
      Required = True
      Size = 38
    end
    object dtsPlaneacionesGeneralesID_MODALIDAD: TStringField
      FieldName = 'ID_MODALIDAD'
      Size = 38
    end
    object dtsPlaneacionesGeneralesSEMESTRE: TStringField
      FieldName = 'SEMESTRE'
      Size = 10
    end
    object dtsPlaneacionesGeneralesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object dtsPlaneacionesGeneralesLUGAR: TStringField
      FieldName = 'LUGAR'
      Size = 50
    end
    object dtsPlaneacionesGeneralesID_PROFESOR_COORDINADOR: TStringField
      FieldName = 'ID_PROFESOR_COORDINADOR'
      Size = 38
    end
    object dtsPlaneacionesGeneralesID_SECRETARIO_ACADEMICO: TStringField
      FieldName = 'ID_SECRETARIO_ACADEMICO'
      Size = 38
    end
    object dtsPlaneacionesGeneralesFECHA_INICIO: TDateField
      FieldName = 'FECHA_INICIO'
    end
    object dtsPlaneacionesGeneralesFECHA_CIERRE: TDateField
      FieldName = 'FECHA_CIERRE'
    end
    object dtsPlaneacionesGeneralesNOMBRE_ASIGNATURA: TStringField
      FieldName = 'NOMBRE_ASIGNATURA'
      Size = 50
    end
    object dtsPlaneacionesGeneralesID_COMPONENTE_CURRICULAR: TStringField
      FieldName = 'ID_COMPONENTE_CURRICULAR'
      Size = 38
    end
    object dtsPlaneacionesGeneralesHORAS_CURSO: TSmallintField
      FieldName = 'HORAS_CURSO'
    end
    object dtsPlaneacionesGeneralesHORAS_SEMANA: TSmallintField
      FieldName = 'HORAS_SEMANA'
    end
    object dtsPlaneacionesGeneralesID_AREA_CURRICULAR: TStringField
      FieldName = 'ID_AREA_CURRICULAR'
      Size = 38
    end
    object dtsPlaneacionesGeneralesID_LINEA_DISCIPLINAR: TStringField
      FieldName = 'ID_LINEA_DISCIPLINAR'
      Size = 38
    end
    object dtsPlaneacionesGeneralesPROPOSITO_GENERAL: TMemoField
      FieldName = 'PROPOSITO_GENERAL'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesGeneralesEVIDENCIA_INTEGRADORA: TStringField
      FieldName = 'EVIDENCIA_INTEGRADORA'
      Size = 50
    end
    object dtsPlaneacionesGeneralesORIENTACIONES_GENERALES: TMemoField
      FieldName = 'ORIENTACIONES_GENERALES'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dtsProfesoresParticipantes: TSQLDataSet
    CommandText = 
      'select * from PROFESORES_PARTICIPANTES'#13#10'where ID_PLANEACION_GENE' +
      'RAL = :ID_PLANEACION_GENERAL'
    DataSource = dsPlaneacionesGenerales
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 360
    Top = 248
    object dtsProfesoresParticipantesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsProfesoresParticipantesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Required = True
      Size = 38
    end
    object dtsProfesoresParticipantesID_PROFESOR: TStringField
      FieldName = 'ID_PROFESOR'
      Size = 38
    end
    object dtsProfesoresParticipantesGRUPOS: TStringField
      FieldName = 'GRUPOS'
      Size = 50
    end
  end
  object dsPlaneacionesGenerales: TDataSource
    DataSet = dtsPlaneacionesGenerales
    Left = 224
    Top = 296
  end
  object dtsPlaneacionesClases: TSQLDataSet
    CommandText = 
      'select * from PLANEACIONES_CLASES'#13#10'where ID_PLANEACION_UNIDAD = ' +
      ':ID_PLANEACION_UNIDAD'
    DataSource = dsPlaneacionesUnidades
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_UNIDAD'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 1112
    Top = 248
    object dtsPlaneacionesClasesID_PLANEACION_CLASE: TStringField
      FieldName = 'ID_PLANEACION_CLASE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsPlaneacionesClasesID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Required = True
      Size = 38
    end
    object dtsPlaneacionesClasesSESION: TSmallintField
      FieldName = 'SESION'
    end
    object dtsPlaneacionesClasesHORAS: TSmallintField
      FieldName = 'HORAS'
    end
    object dtsPlaneacionesClasesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object dtsPlaneacionesClasesCONTENIDO_TEMATICO: TMemoField
      FieldName = 'CONTENIDO_TEMATICO'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesPROPOSITO_SESION: TMemoField
      FieldName = 'PROPOSITO_SESION'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesCOMPETENCIAS_GENERICAS: TMemoField
      FieldName = 'COMPETENCIAS_GENERICAS'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesCOMPETENCIAS_DISCIPLINARES: TMemoField
      FieldName = 'COMPETENCIAS_DISCIPLINARES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesSABERES_CONCEPTUALES: TMemoField
      FieldName = 'SABERES_CONCEPTUALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesSABERES_PROCEDIMENTALES: TMemoField
      FieldName = 'SABERES_PROCEDIMENTALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesSABERES_ACTITUDINALES: TMemoField
      FieldName = 'SABERES_ACTITUDINALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesACTIVIDAD_APERTURA: TMemoField
      FieldName = 'ACTIVIDAD_APERTURA'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesACTIVIDAD_DESARROLLO: TMemoField
      FieldName = 'ACTIVIDAD_DESARROLLO'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesACTIVIDAD_CIERRE: TMemoField
      FieldName = 'ACTIVIDAD_CIERRE'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesRECURSOS_MATERIALES: TMemoField
      FieldName = 'RECURSOS_MATERIALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesClasesOBSERVACIONES_COMENTARIOS: TMemoField
      FieldName = 'OBSERVACIONES_COMENTARIOS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsPlaneacionesUnidades: TDataSource
    DataSet = dtsPlaneacionesUnidades
    Left = 640
    Top = 296
  end
  object dtsEvaluaciones: TSQLDataSet
    CommandText = 
      'select * from EVALUACIONES'#13#10'where ID_PLANEACION_UNIDAD = :ID_PLA' +
      'NEACION_UNIDAD'
    DataSource = dsPlaneacionesUnidades
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_UNIDAD'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 1008
    Top = 248
    object dtsEvaluacionesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsEvaluacionesID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Required = True
      Size = 38
    end
    object dtsEvaluacionesASPECTO: TStringField
      FieldName = 'ASPECTO'
      Size = 50
    end
    object dtsEvaluacionesEVIDENCIA: TMemoField
      FieldName = 'EVIDENCIA'
      BlobType = ftMemo
      Size = 1
    end
    object dtsEvaluacionesPONDERACION: TSmallintField
      FieldName = 'PONDERACION'
    end
    object dtsEvaluacionesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object dtsEvaluacionesID_INSTRUMENTO_EVALUACION: TStringField
      FieldName = 'ID_INSTRUMENTO_EVALUACION'
      Size = 38
    end
  end
  object dtsPlaneacionesUnidades: TSQLDataSet
    CommandText = 
      'select * from PLANEACIONES_UNIDADES'#13#10'where ID_PLANEACION_GENERAL' +
      ' = :ID_PLANEACION_GENERAL'
    DataSource = dsPlaneacionesGenerales
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 640
    Top = 248
    object dtsPlaneacionesUnidadesID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsPlaneacionesUnidadesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Required = True
      Size = 38
    end
    object dtsPlaneacionesUnidadesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object dtsPlaneacionesUnidadesPROPOSITO_UNIDAD: TMemoField
      FieldName = 'PROPOSITO_UNIDAD'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesRECURSOS: TMemoField
      FieldName = 'RECURSOS'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesESTRATEGIAS_DIDACTICAS: TMemoField
      FieldName = 'ESTRATEGIAS_DIDACTICAS'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesESTRATEGIAS_RETROALIMENTACION: TMemoField
      FieldName = 'ESTRATEGIAS_RETROALIMENTACION'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesHORAS: TSmallintField
      FieldName = 'HORAS'
    end
    object dtsPlaneacionesUnidadesSABERES_CONCEPTUALES: TMemoField
      FieldName = 'SABERES_CONCEPTUALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesSABERES_PROCEDIMENTALES: TMemoField
      FieldName = 'SABERES_PROCEDIMENTALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesSABERES_ACTITUDINALES: TMemoField
      FieldName = 'SABERES_ACTITUDINALES'
      BlobType = ftMemo
      Size = 1
    end
    object dtsPlaneacionesUnidadesCONTENIDO_TEMATICO: TMemoField
      FieldName = 'CONTENIDO_TEMATICO'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dtsAcuerdos: TSQLDataSet
    CommandText = 
      'select * from ACUERDOS'#13#10'where ID_PLANEACION_GENERAL = :ID_PLANEA' +
      'CION_GENERAL'
    DataSource = dsPlaneacionesGenerales
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 536
    Top = 248
    object dtsAcuerdosID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsAcuerdosID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Required = True
      Size = 38
    end
    object dtsAcuerdosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object dtsAcuerdosACUERDO: TMemoField
      FieldName = 'ACUERDO'
      BlobType = ftMemo
      Size = 1
    end
    object dtsAcuerdosPARA: TStringField
      FieldName = 'PARA'
      Size = 100
    end
    object dtsAcuerdosSEGUIMIENTO: TMemoField
      FieldName = 'SEGUIMIENTO'
      BlobType = ftMemo
      Size = 1
    end
    object dtsAcuerdosFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object dtsReuniones: TSQLDataSet
    CommandText = 
      'select * from REUNIONES'#13#10'where ID_PLANEACION_GENERAL = :ID_PLANE' +
      'ACION_GENERAL'
    DataSource = dsPlaneacionesGenerales
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 464
    Top = 248
    object dtsReunionesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsReunionesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Required = True
      Size = 38
    end
    object dtsReunionesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object dtsReunionesPROPOSITO: TMemoField
      FieldName = 'PROPOSITO'
      BlobType = ftMemo
      Size = 1
    end
    object dtsReunionesFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object dspInstrumentosEvaluacion: TDataSetProvider
    DataSet = dtsInstrumentosEvaluacion
    UpdateMode = upWhereChanged
    Left = 1000
    Top = 104
  end
  object dsPlanes: TDataSource
    DataSet = dtsPlanes
    Left = 128
    Top = 296
  end
  object dspUnidadesRegionales: TDataSetProvider
    DataSet = dtsUnidadesRegionales
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 48
    Top = 104
  end
  object dtsUnidadesRegionales: TSQLDataSet
    CommandText = 'select * from UNIDADES_REGIONALES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 48
    Top = 56
    object dtsUnidadesRegionalesID_UNIDAD_REGIONAL: TStringField
      FieldName = 'ID_UNIDAD_REGIONAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsUnidadesRegionalesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 10
    end
  end
  object dsUnidadesRegionales: TDataSource
    DataSet = dtsUnidadesRegionales
    Left = 48
    Top = 200
  end
  object dsCiclosEscolares: TDataSource
    DataSet = dtsCiclosEscolares
    Left = 48
    Top = 344
  end
  object dtsInstrumentosEvaluacion: TSQLDataSet
    CommandText = 'select * from INSTRUMENTOS_EVALUACION'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 1000
    Top = 56
    object dtsInstrumentosEvaluacionID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsInstrumentosEvaluacionNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dspCiclosEscolares: TDataSetProvider
    DataSet = dtsCiclosEscolares
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 48
    Top = 296
  end
  object dtsCiclosEscolares: TSQLDataSet
    CommandText = 
      'select * from CICLOS_ESCOLARES where ID_UNIDAD_REGIONAL = :ID_UN' +
      'IDAD_REGIONAL and ACTIVO >= :ACTIVO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_UNIDAD_REGIONAL'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ACTIVO'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 48
    Top = 248
    object dtsCiclosEscolaresID_CICLO_ESCOLAR: TStringField
      FieldName = 'ID_CICLO_ESCOLAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsCiclosEscolaresNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 10
    end
    object dtsCiclosEscolaresID_UNIDAD_REGIONAL: TStringField
      FieldName = 'ID_UNIDAD_REGIONAL'
      Required = True
      Size = 38
    end
    object dtsCiclosEscolaresACTIVO: TSmallintField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
  end
  object dsAreasCurriculares: TDataSource
    DataSet = dtsAreasCurriculares
    Left = 536
    Top = 152
  end
  object dsPlaneacionesClases: TDataSource
    DataSet = dtsPlaneacionesClases
    Left = 1112
    Top = 296
  end
  object dspPerfiles: TDataSetProvider
    DataSet = dtsPerfiles
    UpdateMode = upWhereChanged
    Left = 736
    Top = 104
  end
  object dtsPerfiles: TSQLDataSet
    CommandText = 'select * from PERFILES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 736
    Top = 56
    object StringField1: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField2: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dspProfesores: TDataSetProvider
    DataSet = dtsProfesores
    UpdateMode = upWhereChanged
    Left = 888
    Top = 104
  end
  object dtsProfesores: TSQLDataSet
    CommandText = 'select * from EMPLEADOS where ID_PERFIL > 3'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 888
    Top = 56
    object StringField3: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField4: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'ID_PERFIL'
      Size = 38
    end
  end
  object dtsUnidadesAtributos: TSQLDataSet
    CommandText = 
      'select * from UNIDADES_ATRIBUTOS'#13#10'where ID_PLANEACION_UNIDAD = :' +
      'ID_PLANEACION_UNIDAD'#13#10'order by ID_UNIDAD_ATRIBUTO'
    DataSource = dsPlaneacionesUnidades
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_UNIDAD'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 768
    Top = 248
    object dtsUnidadesAtributosID_UNIDAD_ATRIBUTO: TStringField
      FieldName = 'ID_UNIDAD_ATRIBUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsUnidadesAtributosID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Size = 38
    end
    object dtsUnidadesAtributosID_ATRIBUTO_COMPETENCIA: TStringField
      FieldName = 'ID_ATRIBUTO_COMPETENCIA'
      Size = 38
    end
    object dtsUnidadesAtributosCRITERIOS_APRENDIZAJE: TMemoField
      FieldName = 'CRITERIOS_APRENDIZAJE'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dtsUnidadesCompetencias: TSQLDataSet
    CommandText = 
      'select * from UNIDADES_COMPETENCIAS'#13#10'where ID_PLANEACION_UNIDAD ' +
      '= :ID_PLANEACION_UNIDAD'#13#10'order by ID_UNIDAD_COMPETENCIA'
    DataSource = dsPlaneacionesUnidades
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_UNIDAD'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 896
    Top = 248
    object dtsUnidadesCompetenciasID_UNIDAD_COMPETENCIA: TStringField
      FieldName = 'ID_UNIDAD_COMPETENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsUnidadesCompetenciasID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Size = 38
    end
    object dtsUnidadesCompetenciasID_COMPETENCIA_DISCIPLINAR: TStringField
      FieldName = 'ID_COMPETENCIA_DISCIPLINAR'
      Size = 38
    end
    object dtsUnidadesCompetenciasCRITERIOS_APRENDIZAJE: TMemoField
      FieldName = 'CRITERIOS_APRENDIZAJE'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspAtributosCompetencias: TDataSetProvider
    DataSet = dtsAtributosCompetencias
    UpdateMode = upWhereChanged
    Left = 1136
    Top = 104
  end
  object dtsAtributosCompetencias: TSQLDataSet
    CommandText = 'select * from ATRIBUTOS_COMPETENCIAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 1136
    Top = 56
    object dtsAtributosCompetenciasID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsAtributosCompetenciasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 250
    end
    object dtsAtributosCompetenciasID_COMPETENCIA_GENERICA: TStringField
      FieldName = 'ID_COMPETENCIA_GENERICA'
      Required = True
      Size = 38
    end
  end
  object dspCompetenciasDisciplinares: TDataSetProvider
    DataSet = dtsCompetenciasDisciplinares
    UpdateMode = upWhereChanged
    Left = 1280
    Top = 104
  end
  object dtsCompetenciasDisciplinares: TSQLDataSet
    CommandText = 'select * from COMPETENCIAS_DISCIPLINARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 1280
    Top = 56
    object dtsCompetenciasDisciplinaresID_COMPETENCIA_DISCIPLINAR: TStringField
      FieldName = 'ID_COMPETENCIA_DISCIPLINAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsCompetenciasDisciplinaresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 250
    end
  end
end
