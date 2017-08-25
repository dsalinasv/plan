object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 447
  Width = 1221
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
  object cdsUnidadesAcademicas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidadesAcademicas'
    RemoteServer = dpcData
    AfterPost = cdsUnidadesAcademicasAfterPost
    AfterDelete = cdsUnidadesAcademicasAfterPost
    OnNewRecord = cdsUnidadesAcademicasNewRecord
    Left = 48
    Top = 128
  end
  object dsUnidadesAcademicas: TDataSource
    DataSet = cdsUnidadesAcademicas
    Left = 56
    Top = 136
  end
  object cdsPlanes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanes'
    RemoteServer = dpcData
    AfterPost = cdsPlanesAfterPost
    AfterDelete = cdsPlanesAfterPost
    OnNewRecord = cdsPlanesNewRecord
    Left = 152
    Top = 128
  end
  object dsPlanes: TDataSource
    DataSet = cdsPlanes
    Left = 160
    Top = 136
  end
  object cdsModalidades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspModalidades'
    RemoteServer = dpcData
    AfterPost = cdsModalidadesAfterPost
    AfterDelete = cdsModalidadesAfterPost
    OnNewRecord = cdsModalidadesNewRecord
    Left = 232
    Top = 128
  end
  object dsModalidades: TDataSource
    DataSet = cdsModalidades
    Left = 240
    Top = 136
  end
  object cdsCiclosEscolares: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCiclosEscolares'
    RemoteServer = dpcData
    AfterPost = cdsCiclosEscolaresAfterPost
    AfterDelete = cdsCiclosEscolaresAfterPost
    OnNewRecord = cdsCiclosEscolaresNewRecord
    Left = 336
    Top = 128
  end
  object dsCiclosEscolares: TDataSource
    DataSet = cdsCiclosEscolares
    Left = 344
    Top = 136
  end
  object cdsSecretariosAcademicos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSecretariosAcademicos'
    RemoteServer = dpcData
    AfterPost = cdsSecretariosAcademicosAfterPost
    AfterDelete = cdsSecretariosAcademicosAfterPost
    OnNewRecord = cdsSecretariosAcademicosNewRecord
    Left = 464
    Top = 128
  end
  object dsSecretariosAcademicos: TDataSource
    DataSet = cdsSecretariosAcademicos
    Left = 472
    Top = 136
  end
  object cdsComponentesCurriculares: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComponentesCurriculares'
    RemoteServer = dpcData
    AfterPost = cdsComponentesCurricularesAfterPost
    AfterDelete = cdsComponentesCurricularesAfterPost
    OnNewRecord = cdsComponentesCurricularesNewRecord
    Left = 616
    Top = 128
  end
  object dsComponentesCurriculares: TDataSource
    DataSet = cdsComponentesCurriculares
    Left = 624
    Top = 136
  end
  object cdsAreasCurriculares: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAreasCurriculares'
    RemoteServer = dpcData
    AfterPost = cdsAreasCurricularesAfterPost
    AfterDelete = cdsAreasCurricularesAfterPost
    OnNewRecord = cdsAreasCurricularesNewRecord
    Left = 760
    Top = 128
  end
  object dsAreasCurriculares: TDataSource
    DataSet = cdsAreasCurriculares
    Left = 768
    Top = 136
  end
  object cdsLineasDisciplinares: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspLineasDisciplinares'
    RemoteServer = dpcData
    AfterPost = cdsLineasDisciplinaresAfterPost
    AfterDelete = cdsLineasDisciplinaresAfterPost
    OnNewRecord = cdsLineasDisciplinaresNewRecord
    Left = 888
    Top = 128
  end
  object dsLineasDisciplinares: TDataSource
    DataSet = cdsLineasDisciplinares
    Left = 896
    Top = 136
  end
  object cdsProfesores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProfesores'
    RemoteServer = dpcData
    AfterPost = cdsProfesoresAfterPost
    AfterDelete = cdsProfesoresAfterPost
    OnNewRecord = cdsProfesoresNewRecord
    Left = 1000
    Top = 128
  end
  object dsProfesores: TDataSource
    DataSet = cdsProfesores
    Left = 1008
    Top = 136
  end
  object dtsPlaneacionesGenerales: TSQLDataSet
    CommandText = 'select * from PLANEACIONES_GENERALES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 48
    Top = 192
  end
  object cdsPlaneacionesGenerales: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlaneacionesGenerales'
    RemoteServer = dpcData
    AfterPost = cdsPlaneacionesGeneralesAfterPost
    OnNewRecord = cdsPlaneacionesGeneralesNewRecord
    Left = 48
    Top = 256
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
    object cdsPlaneacionesGeneralesPROPOSITO_GENERAL: TStringField
      FieldName = 'PROPOSITO_GENERAL'
      Size = 250
    end
    object cdsPlaneacionesGeneralesEVIDENCIA_INTEGRADORA: TStringField
      FieldName = 'EVIDENCIA_INTEGRADORA'
      Size = 50
    end
    object cdsPlaneacionesGeneralesORIENTACIONES_GENERALES: TStringField
      FieldName = 'ORIENTACIONES_GENERALES'
      Size = 50
    end
    object cdsPlaneacionesGeneralesID_UNIDAD_ACADEMICA: TStringField
      FieldName = 'ID_UNIDAD_ACADEMICA'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_PLAN: TStringField
      FieldName = 'ID_PLAN'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_MODALIDAD: TStringField
      FieldName = 'ID_MODALIDAD'
      Size = 38
    end
    object cdsPlaneacionesGeneralesID_CICLO_ESCOLAR: TStringField
      FieldName = 'ID_CICLO_ESCOLAR'
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
    object cdsPlaneacionesGeneralesUNIDAD_ACADEMICA: TStringField
      FieldKind = fkLookup
      FieldName = 'UNIDAD_ACADEMICA'
      LookupDataSet = cdsUnidadesAcademicas
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_UNIDAD_ACADEMICA'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesPLAN: TStringField
      FieldKind = fkLookup
      FieldName = 'PLAN'
      LookupDataSet = cdsPlanes
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PLAN'
      Size = 50
      Lookup = True
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
    object cdsPlaneacionesGeneralesCICLO_ESCOLAR: TStringField
      FieldKind = fkLookup
      FieldName = 'CICLO_ESCOLAR'
      LookupDataSet = cdsCiclosEscolares
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_CICLO_ESCOLAR'
      Size = 50
      Lookup = True
    end
    object cdsPlaneacionesGeneralesPROFESOR_COORDINADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'PROFESOR_COORDINADOR'
      LookupDataSet = cdsProfesores
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
      LookupKeyFields = 'ID'
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
    object cdsPlaneacionesGeneralesdtsProfesoresParticipantes: TDataSetField
      FieldName = 'dtsProfesoresParticipantes'
    end
    object cdsPlaneacionesGeneralesdtsAcuerdos: TDataSetField
      FieldName = 'dtsAcuerdos'
    end
    object cdsPlaneacionesGeneralesdtsReuniones: TDataSetField
      FieldName = 'dtsReuniones'
    end
    object cdsPlaneacionesGeneralesdtsPlaneacionesUnidades: TDataSetField
      FieldName = 'dtsPlaneacionesUnidades'
    end
  end
  object dspPlaneacionesGenerales: TDataSetProvider
    DataSet = dtsPlaneacionesGenerales
    Left = 56
    Top = 200
  end
  object dsPlaneacionesGenerales: TDataSource
    DataSet = cdsPlaneacionesGenerales
    Left = 56
    Top = 264
  end
  object dtsProfesoresParticipantes: TSQLDataSet
    CommandText = 
      'select * from PROFESORES_PARTICIPANTES'#13#10'where ID_PLANEACION_GENE' +
      'RAL = :ID_PLANEACION_GENERAL'
    DataSource = dsPlaneacionezGeneralez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 208
    Top = 200
  end
  object cdsProfesoresParticipantes: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsProfesoresParticipantes
    Params = <>
    RemoteServer = dpcData
    OnNewRecord = cdsProfesoresParticipantesNewRecord
    Left = 200
    Top = 256
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
  object dsPlaneacionezGeneralez: TDataSource
    DataSet = dtsPlaneacionesGenerales
    Left = 200
    Top = 192
  end
  object dsProfesoresParticipantes: TDataSource
    DataSet = cdsProfesoresParticipantes
    Left = 208
    Top = 264
  end
  object cdsReuniones: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsReuniones
    Params = <>
    RemoteServer = dpcData
    OnNewRecord = cdsReunionesNewRecord
    Left = 320
    Top = 312
  end
  object dsReuniones: TDataSource
    DataSet = cdsReuniones
    Left = 328
    Top = 320
  end
  object cdsAcuerdos: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsAcuerdos
    Params = <>
    RemoteServer = dpcData
    OnNewRecord = cdsAcuerdosNewRecord
    Left = 400
    Top = 312
  end
  object dsAcuerdos: TDataSource
    DataSet = cdsAcuerdos
    Left = 408
    Top = 320
  end
  object cdsPlaneacionesUnidades: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesGeneralesdtsPlaneacionesUnidades
    Params = <>
    RemoteServer = dpcData
    OnNewRecord = cdsPlaneacionesUnidadesNewRecord
    Left = 512
    Top = 312
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
      Size = 250
    end
    object cdsPlaneacionesUnidadesPROPOSITO_UNIDAD: TStringField
      FieldName = 'PROPOSITO_UNIDAD'
      Size = 250
    end
    object cdsPlaneacionesUnidadesRECURSOS: TStringField
      FieldName = 'RECURSOS'
      Size = 250
    end
    object cdsPlaneacionesUnidadesESTRATEGIAS_RETROALIMENTACION: TStringField
      FieldName = 'ESTRATEGIAS_RETROALIMENTACION'
      Size = 100
    end
    object cdsPlaneacionesUnidadesHORAS_PROGRAMADAS: TIntegerField
      FieldName = 'HORAS_PROGRAMADAS'
    end
    object cdsPlaneacionesUnidadesHORAS_PLANEADAS: TIntegerField
      FieldName = 'HORAS_PLANEADAS'
    end
    object cdsPlaneacionesUnidadesdtsEvaluaciones: TDataSetField
      FieldName = 'dtsEvaluaciones'
    end
    object cdsPlaneacionesUnidadesdtsPlaneacionesClases: TDataSetField
      FieldName = 'dtsPlaneacionesClases'
    end
  end
  object dsPlaneacionesUnidades: TDataSource
    DataSet = cdsPlaneacionesUnidades
    Left = 520
    Top = 320
  end
  object cdsEvaluaciones: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesUnidadesdtsEvaluaciones
    Params = <>
    RemoteServer = dpcData
    OnNewRecord = cdsEvaluacionesNewRecord
    Left = 632
    Top = 312
  end
  object dsEvaluaciones: TDataSource
    DataSet = cdsEvaluaciones
    Left = 640
    Top = 320
  end
  object dsPlaneacionesClases: TDataSource
    DataSet = cdsPlaneacionesClases
    Left = 752
    Top = 320
  end
  object cdsPlaneacionesClases: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesUnidadesdtsPlaneacionesClases
    Params = <>
    RemoteServer = dpcData
    OnNewRecord = cdsPlaneacionesClasesNewRecord
    Left = 744
    Top = 312
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
    object cdsPlaneacionesClasesCONTENIDO_TEMATICO: TStringField
      FieldName = 'CONTENIDO_TEMATICO'
      Size = 250
    end
    object cdsPlaneacionesClasesPROPOSITO_SESION: TStringField
      FieldName = 'PROPOSITO_SESION'
      Size = 100
    end
    object cdsPlaneacionesClasesSABERES_CONCEPTUALES: TStringField
      FieldName = 'SABERES_CONCEPTUALES'
      Size = 100
    end
    object cdsPlaneacionesClasesSABERES_PROCEDIMENTALES: TStringField
      FieldName = 'SABERES_PROCEDIMENTALES'
      Size = 100
    end
    object cdsPlaneacionesClasesSABERES_ACTITUDINALES: TStringField
      FieldName = 'SABERES_ACTITUDINALES'
      Size = 100
    end
    object cdsPlaneacionesClasesACTIVIDAD_APERTURA: TStringField
      FieldName = 'ACTIVIDAD_APERTURA'
      Size = 50
    end
    object cdsPlaneacionesClasesACTIVIDAD_DESARROLLO: TStringField
      FieldName = 'ACTIVIDAD_DESARROLLO'
      Size = 50
    end
    object cdsPlaneacionesClasesACTIVIDAD_CIERRE: TStringField
      FieldName = 'ACTIVIDAD_CIERRE'
      Size = 50
    end
    object cdsPlaneacionesClasesRECURSOS_MATERIALES: TStringField
      FieldName = 'RECURSOS_MATERIALES'
      Size = 50
    end
    object cdsPlaneacionesClasesOBSERVACIONES_COMENTARIOS: TStringField
      FieldName = 'OBSERVACIONES_COMENTARIOS'
      Size = 200
    end
    object cdsPlaneacionesClasesdtsCompetenciasDisciplinares: TDataSetField
      FieldName = 'dtsCompetenciasDisciplinares'
    end
    object cdsPlaneacionesClasesdtsCompetenciasGenericas: TDataSetField
      FieldName = 'dtsCompetenciasGenericas'
    end
  end
  object cdsCompetenciasGenericas: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesClasesdtsCompetenciasGenericas
    Params = <>
    RemoteServer = dpcData
    Left = 880
    Top = 312
  end
  object dsCompetenciasGenericas: TDataSource
    DataSet = cdsCompetenciasGenericas
    Left = 888
    Top = 320
  end
  object dsCompetenciasDisciplinares: TDataSource
    DataSet = cdsCompetenciasDisciplinares
    Left = 1040
    Top = 320
  end
  object cdsCompetenciasDisciplinares: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPlaneacionesClasesdtsCompetenciasDisciplinares
    Params = <>
    RemoteServer = dpcData
    Left = 1032
    Top = 312
  end
  object RzFrameController1: TRzFrameController
    Left = 176
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
    Left = 280
    Top = 8
  end
  object dpcData: TDSProviderConnection
    ServerClassName = 'TsrvMethods'
    SQLConnection = cntData
    Left = 56
    Top = 16
  end
  object dsInstrumentosEvaluacion: TDataSource
    DataSet = cdsInstrumentosEvaluacion
    Left = 1128
    Top = 136
  end
  object cdsInstrumentosEvaluacion: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInstrumentosEvaluacion'
    RemoteServer = dpcData
    AfterPost = cdsInstrumentosEvaluacionAfterPost
    AfterDelete = cdsInstrumentosEvaluacionAfterPost
    OnNewRecord = cdsInstrumentosEvaluacionNewRecord
    Left = 1120
    Top = 128
  end
end
