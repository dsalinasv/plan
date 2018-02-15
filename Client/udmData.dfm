object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 447
  Width = 1387
  object cntData: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=24.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=profesalinas.redirectme.net'
      'port=8080'
      'Filters={}'
      'CommunicationProtocol=http')
    Left = 48
    Top = 8
  end
  object dsUnidadesAcademicas: TDataSource
    DataSet = cdsUnidadesAcademicas
    Left = 48
    Top = 200
  end
  object dsPlanes: TDataSource
    DataSet = cdsPlanes
    Left = 240
    Top = 200
  end
  object dsModalidades: TDataSource
    DataSet = cdsModalidades
    Left = 152
    Top = 104
  end
  object dsCiclosEscolares: TDataSource
    DataSet = cdsCiclosEscolares
    Left = 160
    Top = 200
  end
  object dsSecretariosAcademicos: TDataSource
    DataSet = cdsSecretariosAcademicos
    Left = 264
    Top = 104
  end
  object dsComponentesCurriculares: TDataSource
    DataSet = cdsComponentesCurriculares
    Left = 408
    Top = 104
  end
  object dsAreasCurriculares: TDataSource
    DataSet = cdsAreasCurriculares
    Left = 544
    Top = 104
  end
  object dsLineasDisciplinares: TDataSource
    DataSet = cdsLineasDisciplinares
    Left = 664
    Top = 104
  end
  object dsEmpleados: TDataSource
    DataSet = cdsEmpleados
    Left = 824
    Top = 104
  end
  object dsPlaneacionesGenerales: TDataSource
    DataSet = cdsPlaneacionesGenerales
    Left = 336
    Top = 200
  end
  object dsProfesoresParticipantes: TDataSource
    DataSet = cdsProfesoresParticipantes
    Left = 472
    Top = 200
  end
  object dsReuniones: TDataSource
    DataSet = cdsReuniones
    Left = 584
    Top = 200
  end
  object dsAcuerdos: TDataSource
    DataSet = cdsAcuerdos
    Left = 664
    Top = 200
  end
  object dsPlaneacionesUnidades: TDataSource
    DataSet = cdsPlaneacionesUnidades
    Left = 768
    Top = 200
  end
  object dsEvaluaciones: TDataSource
    DataSet = cdsEvaluaciones
    Left = 1136
    Top = 200
  end
  object dsPlaneacionesClases: TDataSource
    DataSet = cdsPlaneacionesClases
    Left = 1240
    Top = 200
  end
  object cdsPlaneacionesClases: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesUnidadesdtsPlaneacionesClases
    Params = <>
    AfterInsert = cdsPlaneacionesClasesAfterInsert
    OnNewRecord = cdsPlaneacionesClasesNewRecord
    Left = 1240
    Top = 152
    object cdsPlaneacionesClasesID_PLANEACION_CLASE: TStringField
      FieldName = 'ID_PLANEACION_CLASE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsPlaneacionesClasesID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Size = 38
    end
    object cdsPlaneacionesClasesSESION: TSmallintField
      FieldName = 'SESION'
    end
    object cdsPlaneacionesClasesHORAS: TSmallintField
      FieldName = 'HORAS'
    end
    object cdsPlaneacionesClasesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object cdsPlaneacionesClasesCONTENIDO_TEMATICO: TMemoField
      FieldName = 'CONTENIDO_TEMATICO'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesPROPOSITO_SESION: TMemoField
      FieldName = 'PROPOSITO_SESION'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesCOMPETENCIAS_GENERICAS: TMemoField
      FieldName = 'COMPETENCIAS_GENERICAS'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesCOMPETENCIAS_DISCIPLINARES: TMemoField
      FieldName = 'COMPETENCIAS_DISCIPLINARES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesSABERES_CONCEPTUALES: TMemoField
      FieldName = 'SABERES_CONCEPTUALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesSABERES_PROCEDIMENTALES: TMemoField
      FieldName = 'SABERES_PROCEDIMENTALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesSABERES_ACTITUDINALES: TMemoField
      FieldName = 'SABERES_ACTITUDINALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesACTIVIDAD_APERTURA: TMemoField
      FieldName = 'ACTIVIDAD_APERTURA'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesACTIVIDAD_DESARROLLO: TMemoField
      FieldName = 'ACTIVIDAD_DESARROLLO'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesACTIVIDAD_CIERRE: TMemoField
      FieldName = 'ACTIVIDAD_CIERRE'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesRECURSOS_MATERIALES: TMemoField
      FieldName = 'RECURSOS_MATERIALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesClasesOBSERVACIONES_COMENTARIOS: TMemoField
      FieldName = 'OBSERVACIONES_COMENTARIOS'
      BlobType = ftMemo
    end
  end
  object RzFrameController1: TRzFrameController
    Left = 264
    Top = 8
  end
  object RzFrameController2: TRzFrameController
    FocusColor = clInfoBk
    FrameColor = clBlack
    FrameHotTrack = True
    FrameSides = [sdBottom]
    FrameVisible = True
    FramingPreference = fpCustomFraming
    ParentColor = True
    Left = 368
    Top = 8
  end
  object dpcData: TDSProviderConnection
    ServerClassName = 'TsrvMethods'
    SQLConnection = cntData
    Left = 152
    Top = 8
  end
  object dsInstrumentosEvaluacion: TDataSource
    DataSet = cdsInstrumentosEvaluacion
    Left = 1016
    Top = 104
  end
  object cdsInstrumentosEvaluacion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInstrumentosEvaluacion'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsInstrumentosEvaluacionNewRecord
    Left = 1016
    Top = 56
    object cdsInstrumentosEvaluacionID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsInstrumentosEvaluacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dsUnidadesRegionales: TDataSource
    DataSet = cdsUnidadesRegionales
    Left = 48
    Top = 104
  end
  object cdsUnidadesRegionales: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidadesRegionales'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsUnidadesAcademicasNewRecord
    Left = 48
    Top = 56
    object cdsUnidadesRegionalesID_UNIDAD_REGIONAL: TStringField
      FieldName = 'ID_UNIDAD_REGIONAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsUnidadesRegionalesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object cdsUnidadesRegionalesdtsUnidadesAcademicas: TDataSetField
      FieldName = 'dtsUnidadesAcademicas'
    end
  end
  object cdsEmpleados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpleados'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsEmpleadosNewRecord
    Left = 824
    Top = 56
    object cdsEmpleadosID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsEmpleadosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object cdsEmpleadosID_PERFIL: TStringField
      FieldName = 'ID_PERFIL'
      Size = 38
    end
    object cdsEmpleadosPERFIL: TStringField
      FieldKind = fkLookup
      FieldName = 'PERFIL'
      LookupDataSet = cdsPerfiles
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PERFIL'
      Lookup = True
    end
  end
  object cdsLineasDisciplinares: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLineasDisciplinares'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsLineasDisciplinaresNewRecord
    Left = 664
    Top = 56
    object cdsLineasDisciplinaresID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsLineasDisciplinaresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object cdsAreasCurriculares: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAreasCurriculares'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsAreasCurricularesNewRecord
    Left = 544
    Top = 56
    object cdsAreasCurricularesID_AREA_CURRICULAR: TStringField
      FieldName = 'ID_AREA_CURRICULAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsAreasCurricularesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object cdsComponentesCurriculares: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComponentesCurriculares'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsComponentesCurricularesNewRecord
    Left = 408
    Top = 56
    object cdsComponentesCurricularesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsComponentesCurricularesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object cdsSecretariosAcademicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecretariosAcademicos'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsSecretariosAcademicosNewRecord
    Left = 264
    Top = 56
    object cdsSecretariosAcademicosID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsSecretariosAcademicosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
  end
  object cdsCiclosEscolares: TClientDataSet
    Aggregates = <>
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
    ProviderName = 'dspCiclosEscolares'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsCiclosEscolaresNewRecord
    Left = 160
    Top = 152
    object cdsCiclosEscolaresID_CICLO_ESCOLAR: TStringField
      FieldName = 'ID_CICLO_ESCOLAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsCiclosEscolaresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 10
    end
    object cdsCiclosEscolaresACTIVO: TSmallintField
      FieldName = 'ACTIVO'
    end
    object cdsCiclosEscolaresID_UNIDAD_REGIONAL: TStringField
      FieldName = 'ID_UNIDAD_REGIONAL'
      Required = True
      Size = 38
    end
    object cdsCiclosEscolaresdtsPlanes: TDataSetField
      FieldName = 'dtsPlanes'
    end
  end
  object cdsModalidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidades'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsModalidadesNewRecord
    Left = 152
    Top = 56
    object cdsModalidadesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsModalidadesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object cdsPlanes: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCiclosEscolaresdtsPlanes
    Params = <>
    OnNewRecord = cdsPlanesNewRecord
    Left = 240
    Top = 152
    object cdsPlanesID_PLAN: TStringField
      FieldName = 'ID_PLAN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsPlanesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 10
    end
    object cdsPlanesID_CICLO_ESCOLAR: TStringField
      FieldName = 'ID_CICLO_ESCOLAR'
      Required = True
      Size = 38
    end
  end
  object cdsUnidadesAcademicas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsUnidadesRegionalesdtsUnidadesAcademicas
    Params = <>
    OnNewRecord = cdsUnidadesAcademicasNewRecord
    Left = 48
    Top = 152
    object cdsUnidadesAcademicasID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsUnidadesAcademicasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object cdsUnidadesAcademicasID_UNIDAD_REGIONAL: TStringField
      FieldName = 'ID_UNIDAD_REGIONAL'
      Required = True
      Size = 38
    end
  end
  object cdsPlaneacionesGenerales: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLAN'
        ParamType = ptInput
        Size = 38
      end
      item
        DataType = ftString
        Name = 'ID_SECRETARIO_ACTA'
        ParamType = ptInput
        Size = 38
      end>
    ProviderName = 'dspPlaneacionesGenerales'
    RemoteServer = dpcData
    AfterInsert = cdsPlaneacionesGeneralesAfterInsert
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsPlaneacionesGeneralesNewRecord
    Left = 336
    Top = 152
    object cdsPlaneacionesGeneralesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsPlaneacionesGeneralesSEMESTRE: TStringField
      FieldName = 'SEMESTRE'
      Size = 3
    end
    object cdsPlaneacionesGeneralesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object cdsPlaneacionesGeneralesLUGAR: TStringField
      FieldName = 'LUGAR'
      Size = 50
    end
    object cdsPlaneacionesGeneralesFECHA_INICIO: TDateField
      FieldName = 'FECHA_INICIO'
    end
    object cdsPlaneacionesGeneralesFECHA_CIERRE: TDateField
      FieldName = 'FECHA_CIERRE'
    end
    object cdsPlaneacionesGeneralesNOMBRE_ASIGNATURA: TStringField
      FieldName = 'NOMBRE_ASIGNATURA'
      Size = 50
    end
    object cdsPlaneacionesGeneralesHORAS_CURSO: TSmallintField
      FieldName = 'HORAS_CURSO'
    end
    object cdsPlaneacionesGeneralesHORAS_SEMANA: TSmallintField
      FieldName = 'HORAS_SEMANA'
    end
    object cdsPlaneacionesGeneralesPROPOSITO_GENERAL: TMemoField
      FieldName = 'PROPOSITO_GENERAL'
      BlobType = ftMemo
    end
    object cdsPlaneacionesGeneralesEVIDENCIA_INTEGRADORA: TStringField
      FieldName = 'EVIDENCIA_INTEGRADORA'
      Size = 50
    end
    object cdsPlaneacionesGeneralesORIENTACIONES_GENERALES: TMemoField
      FieldName = 'ORIENTACIONES_GENERALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesGeneralesID_PLAN: TStringField
      FieldName = 'ID_PLAN'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_MODALIDAD: TStringField
      FieldName = 'ID_MODALIDAD'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_SECRETARIO_ACTA: TStringField
      FieldName = 'ID_SECRETARIO_ACTA'
      Origin = 'ID_SECRETARIO_ACTA'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_PROFESOR_COORDINADOR: TStringField
      FieldName = 'ID_PROFESOR_COORDINADOR'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_SECRETARIO_ACADEMICO: TStringField
      FieldName = 'ID_SECRETARIO_ACADEMICO'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_COMPONENTE_CURRICULAR: TStringField
      FieldName = 'ID_COMPONENTE_CURRICULAR'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_AREA_CURRICULAR: TStringField
      FieldName = 'ID_AREA_CURRICULAR'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_LINEA_DISCIPLINAR: TStringField
      FieldName = 'ID_LINEA_DISCIPLINAR'
      Size = 38
    end
    object cdsPlaneacionesGeneralesMODALIDAD: TStringField
      FieldKind = fkLookup
      FieldName = 'MODALIDAD'
      LookupDataSet = cdsModalidades
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_MODALIDAD'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesPROFESOR_COORDINADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'PROFESOR_COORDINADOR'
      LookupDataSet = cdsEmpleados
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PROFESOR_COORDINADOR'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesSECRETARIO_ACADEMICO: TStringField
      FieldKind = fkLookup
      FieldName = 'SECRETARIO_ACADEMICO'
      LookupDataSet = cdsSecretariosAcademicos
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_SECRETARIO_ACADEMICO'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesCOMPONENTE_CURRICULAR: TStringField
      FieldKind = fkLookup
      FieldName = 'COMPONENTE_CURRICULAR'
      LookupDataSet = cdsComponentesCurriculares
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_COMPONENTE_CURRICULAR'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesAREA_CURRICULAR: TStringField
      FieldKind = fkLookup
      FieldName = 'AREA_CURRICULAR'
      LookupDataSet = cdsAreasCurriculares
      LookupKeyFields = 'ID_AREA_CURRICULAR'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_AREA_CURRICULAR'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesLINEA_DISCIPLINAR: TStringField
      FieldKind = fkLookup
      FieldName = 'LINEA_DISCIPLINAR'
      LookupDataSet = cdsLineasDisciplinares
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_LINEA_DISCIPLINAR'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesdtsReuniones: TDataSetField
      FieldName = 'dtsReuniones'
    end
    object cdsPlaneacionesGeneralesdtsAcuerdos: TDataSetField
      FieldName = 'dtsAcuerdos'
    end
    object cdsPlaneacionesGeneralesdtsProfesoresParticipantes: TDataSetField
      FieldName = 'dtsProfesoresParticipantes'
    end
    object cdsPlaneacionesGeneralesdtsPlaneacionesUnidades: TDataSetField
      FieldName = 'dtsPlaneacionesUnidades'
    end
  end
  object cdsProfesoresParticipantes: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsProfesoresParticipantes
    Params = <>
    OnNewRecord = cdsProfesoresParticipantesNewRecord
    Left = 472
    Top = 152
    object cdsProfesoresParticipantesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsProfesoresParticipantesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Size = 38
    end
    object cdsProfesoresParticipantesID_PROFESOR: TStringField
      FieldName = 'ID_PROFESOR'
      Size = 38
    end
    object cdsProfesoresParticipantesGRUPOS: TStringField
      FieldName = 'GRUPOS'
      Size = 50
    end
    object cdsProfesoresParticipantesPROFESOR: TStringField
      FieldKind = fkLookup
      FieldName = 'PROFESOR'
      LookupDataSet = cdsProfesores
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PROFESOR'
      Size = 50
      Lookup = True
    end
  end
  object cdsReuniones: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsReuniones
    Params = <>
    AfterInsert = cdsReunionesAfterInsert
    OnNewRecord = cdsReunionesNewRecord
    Left = 584
    Top = 152
    object cdsReunionesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsReunionesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Required = True
      Size = 38
    end
    object cdsReunionesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object cdsReunionesPROPOSITO: TMemoField
      FieldName = 'PROPOSITO'
      BlobType = ftMemo
    end
    object cdsReunionesFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object cdsAcuerdos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsAcuerdos
    Params = <>
    AfterInsert = cdsAcuerdosAfterInsert
    OnNewRecord = cdsAcuerdosNewRecord
    Left = 664
    Top = 152
    object cdsAcuerdosID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsAcuerdosID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Required = True
      Size = 38
    end
    object cdsAcuerdosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object cdsAcuerdosACUERDO: TMemoField
      FieldName = 'ACUERDO'
      BlobType = ftMemo
    end
    object cdsAcuerdosPARA: TStringField
      FieldName = 'PARA'
      Size = 100
    end
    object cdsAcuerdosSEGUIMIENTO: TMemoField
      FieldName = 'SEGUIMIENTO'
      BlobType = ftMemo
    end
    object cdsAcuerdosFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object cdsPlaneacionesUnidades: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsPlaneacionesUnidades
    Params = <>
    OnNewRecord = cdsPlaneacionesUnidadesNewRecord
    Left = 768
    Top = 152
    object cdsPlaneacionesUnidadesID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsPlaneacionesUnidadesID_PLANEACION_GENERAL: TStringField
      FieldName = 'ID_PLANEACION_GENERAL'
      Size = 38
    end
    object cdsPlaneacionesUnidadesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object cdsPlaneacionesUnidadesPROPOSITO_UNIDAD: TMemoField
      FieldName = 'PROPOSITO_UNIDAD'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesRECURSOS: TMemoField
      FieldName = 'RECURSOS'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesESTRATEGIAS_RETROALIMENTACION: TMemoField
      FieldName = 'ESTRATEGIAS_RETROALIMENTACION'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesHORAS: TSmallintField
      FieldName = 'HORAS'
    end
    object cdsPlaneacionesUnidadesESTRATEGIAS_DIDACTICAS: TMemoField
      FieldName = 'ESTRATEGIAS_DIDACTICAS'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesSABERES_CONCEPTUALES: TMemoField
      FieldName = 'SABERES_CONCEPTUALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesSABERES_PROCEDIMENTALES: TMemoField
      FieldName = 'SABERES_PROCEDIMENTALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesSABERES_ACTITUDINALES: TMemoField
      FieldName = 'SABERES_ACTITUDINALES'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesCONTENIDO_TEMATICO: TMemoField
      FieldName = 'CONTENIDO_TEMATICO'
      BlobType = ftMemo
    end
    object cdsPlaneacionesUnidadesdtsUnidadesCompetencias: TDataSetField
      FieldName = 'dtsUnidadesCompetencias'
    end
    object cdsPlaneacionesUnidadesdtsUnidadesAtributos: TDataSetField
      FieldName = 'dtsUnidadesAtributos'
    end
    object cdsPlaneacionesUnidadesdtsEvaluaciones: TDataSetField
      FieldName = 'dtsEvaluaciones'
    end
    object cdsPlaneacionesUnidadesdtsPlaneacionesClases: TDataSetField
      FieldName = 'dtsPlaneacionesClases'
    end
  end
  object cdsEvaluaciones: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesUnidadesdtsEvaluaciones
    Params = <>
    AfterInsert = cdsEvaluacionesAfterInsert
    OnNewRecord = cdsEvaluacionesNewRecord
    Left = 1136
    Top = 152
    object cdsEvaluacionesID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsEvaluacionesID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Required = True
      Size = 38
    end
    object cdsEvaluacionesASPECTO: TStringField
      FieldName = 'ASPECTO'
      Size = 50
    end
    object cdsEvaluacionesEVIDENCIA: TMemoField
      FieldName = 'EVIDENCIA'
      BlobType = ftMemo
    end
    object cdsEvaluacionesPONDERACION: TSmallintField
      FieldName = 'PONDERACION'
    end
    object cdsEvaluacionesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object cdsEvaluacionesID_INSTRUMENTO_EVALUACION: TStringField
      FieldName = 'ID_INSTRUMENTO_EVALUACION'
      Size = 38
    end
  end
  object dsPerfiles: TDataSource
    DataSet = cdsPerfiles
    Left = 752
    Top = 104
  end
  object cdsPerfiles: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPerfiles'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsEmpleadosNewRecord
    Left = 752
    Top = 56
    object StringField1: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField2: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
  end
  object dsProfesores: TDataSource
    DataSet = cdsProfesores
    Left = 904
    Top = 104
  end
  object cdsProfesores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpleados'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsEmpleadosNewRecord
    Left = 904
    Top = 56
    object StringField3: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField4: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'ID_PERFIL'
      Size = 38
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'PERFIL'
      LookupDataSet = cdsPerfiles
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PERFIL'
      Lookup = True
    end
  end
  object cdsUnidadesAtributos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesUnidadesdtsUnidadesAtributos
    Params = <>
    OnNewRecord = cdsUnidadesAtributosNewRecord
    Left = 896
    Top = 152
    object cdsUnidadesAtributosID_UNIDAD_ATRIBUTO: TStringField
      FieldName = 'ID_UNIDAD_ATRIBUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsUnidadesAtributosID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Size = 38
    end
    object cdsUnidadesAtributosID_ATRIBUTO_COMPETENCIA: TStringField
      FieldName = 'ID_ATRIBUTO_COMPETENCIA'
      Size = 38
    end
    object cdsUnidadesAtributosCRITERIOS_APRENDIZAJE: TMemoField
      FieldName = 'CRITERIOS_APRENDIZAJE'
      BlobType = ftMemo
    end
    object cdsUnidadesAtributosATRIBUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'ATRIBUTO'
      LookupDataSet = cdsAtributosCompetencias
      LookupKeyFields = 'ID'
      LookupResultField = 'ID'
      KeyFields = 'ID_ATRIBUTO_COMPETENCIA'
      Lookup = True
    end
  end
  object dsUnidadesAtributos: TDataSource
    DataSet = cdsUnidadesAtributos
    Left = 896
    Top = 200
  end
  object cdsUnidadesCompetencias: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesUnidadesdtsUnidadesCompetencias
    Params = <>
    OnNewRecord = cdsUnidadesCompetenciasNewRecord
    Left = 1024
    Top = 152
    object cdsUnidadesCompetenciasID_UNIDAD_COMPETENCIA: TStringField
      FieldName = 'ID_UNIDAD_COMPETENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsUnidadesCompetenciasID_PLANEACION_UNIDAD: TStringField
      FieldName = 'ID_PLANEACION_UNIDAD'
      Size = 38
    end
    object cdsUnidadesCompetenciasID_COMPETENCIA_DISCIPLINAR: TStringField
      FieldName = 'ID_COMPETENCIA_DISCIPLINAR'
      Size = 38
    end
    object cdsUnidadesCompetenciasCRITERIOS_APRENDIZAJE: TMemoField
      FieldName = 'CRITERIOS_APRENDIZAJE'
      BlobType = ftMemo
    end
    object cdsUnidadesCompetenciasCOMPETENCIA_DISCIPLINAR: TStringField
      FieldKind = fkLookup
      FieldName = 'COMPETENCIA_DISCIPLINAR'
      LookupDataSet = cdsCompetenciasDisciplinares
      LookupKeyFields = 'ID_COMPETENCIA_DISCIPLINAR'
      LookupResultField = 'ID_COMPETENCIA_DISCIPLINAR'
      KeyFields = 'ID_COMPETENCIA_DISCIPLINAR'
      Lookup = True
    end
  end
  object dsUnidadesCompetencias: TDataSource
    DataSet = cdsUnidadesCompetencias
    Left = 1024
    Top = 200
  end
  object dsAtributosCompetencias: TDataSource
    DataSet = cdsAtributosCompetencias
    Left = 1152
    Top = 104
  end
  object cdsAtributosCompetencias: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAtributosCompetencias'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsInstrumentosEvaluacionNewRecord
    Left = 1152
    Top = 56
    object cdsAtributosCompetenciasID: TStringField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsAtributosCompetenciasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 250
    end
    object cdsAtributosCompetenciasID_COMPETENCIA_GENERICA: TStringField
      FieldName = 'ID_COMPETENCIA_GENERICA'
      Required = True
      Size = 38
    end
  end
  object dsCompetenciasDisciplinares: TDataSource
    DataSet = cdsCompetenciasDisciplinares
    Left = 1296
    Top = 104
  end
  object cdsCompetenciasDisciplinares: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCompetenciasDisciplinares'
    RemoteServer = dpcData
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsInstrumentosEvaluacionNewRecord
    Left = 1296
    Top = 56
    object cdsCompetenciasDisciplinaresID_COMPETENCIA_DISCIPLINAR: TStringField
      FieldName = 'ID_COMPETENCIA_DISCIPLINAR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsCompetenciasDisciplinaresNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 250
    end
  end
  object frxReport: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43110.431553668990000000
    ReportOptions.LastChange = 43110.431553668990000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 450
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
end
