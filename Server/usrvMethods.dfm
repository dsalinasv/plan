object srvMethods: TsrvMethods
  OldCreateOrder = False
  Height = 606
  Width = 1276
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
  object dspProfesores: TDataSetProvider
    DataSet = dtsProfesores
    Left = 1008
    Top = 72
  end
  object dtsProfesores: TSQLDataSet
    CommandText = 'select * from PROFESORES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 1000
    Top = 64
  end
  object dspLineasDisciplinares: TDataSetProvider
    DataSet = dtsLineasDisciplinares
    Left = 896
    Top = 72
  end
  object dtsLineasDisciplinares: TSQLDataSet
    CommandText = 'select * from LINEAS_DISCIPLINARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 888
    Top = 64
  end
  object dspAreasCurriculares: TDataSetProvider
    DataSet = dtsAreasCurriculares
    Left = 768
    Top = 72
  end
  object dtsAreasCurriculares: TSQLDataSet
    CommandText = 'select * from AREAS_CURRICULARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 760
    Top = 64
  end
  object dspComponentesCurriculares: TDataSetProvider
    DataSet = dtsComponentesCurriculares
    Left = 624
    Top = 72
  end
  object dtsComponentesCurriculares: TSQLDataSet
    CommandText = 'select * from COMPONENTES_CURRICULARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 616
    Top = 64
  end
  object dspSecretariosAcademicos: TDataSetProvider
    DataSet = dtsSecretariosAcademicos
    Left = 472
    Top = 72
  end
  object dtsSecretariosAcademicos: TSQLDataSet
    CommandText = 'select * from SECRETARIOS_ACADEMICOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 464
    Top = 64
  end
  object dspCiclosEscolares: TDataSetProvider
    DataSet = dtsCiclosEscolares
    Left = 344
    Top = 72
  end
  object dtsCiclosEscolares: TSQLDataSet
    CommandText = 'select * from CICLOS_ESCOLARES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 336
    Top = 64
  end
  object dspModalidades: TDataSetProvider
    DataSet = dtsModalidades
    Left = 240
    Top = 72
  end
  object dtsModalidades: TSQLDataSet
    CommandText = 'select * from MODALIDADES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 232
    Top = 64
  end
  object dspPlanes: TDataSetProvider
    DataSet = dtsPlanes
    Left = 160
    Top = 72
  end
  object dtsPlanes: TSQLDataSet
    CommandText = 'select * from PLANES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 152
    Top = 64
  end
  object dspUnidadesAcademicas: TDataSetProvider
    DataSet = dtsUnidadesAcademicas
    Left = 56
    Top = 72
  end
  object dtsUnidadesAcademicas: TSQLDataSet
    CommandText = 'select * from UNIDADES_ACADEMICAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 48
    Top = 64
  end
  object dspPlaneacionesGenerales: TDataSetProvider
    DataSet = dtsPlaneacionesGenerales
    Left = 56
    Top = 200
  end
  object dtsPlaneacionesGenerales: TSQLDataSet
    CommandText = 'select * from PLANEACIONES_GENERALES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 48
    Top = 192
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
  object dsPlaneacionezGeneralez: TDataSource
    DataSet = dtsPlaneacionesGenerales
    Left = 200
    Top = 192
  end
  object dtsCompetenciasDisciplinares: TSQLDataSet
    CommandText = 
      'select * from COMPETENCIAS_DISCIPLINARES'#13#10'where ID_PLANEACION_CL' +
      'ASE = :ID_PLANEACION_CLASE'
    DataSource = dsPlaneacionezClasez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_CLASE'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 1032
    Top = 256
  end
  object dtsCompetenciasGenericas: TSQLDataSet
    CommandText = 
      'select * from COMPETENCIAS_GENERICAS'#13#10'where ID_PLANEACION_CLASE ' +
      '= :ID_PLANEACION_CLASE'
    DataSource = dsPlaneacionezClasez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_CLASE'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 880
    Top = 256
  end
  object dsPlaneacionezClasez: TDataSource
    DataSet = dtsPlaneacionesClases
    Left = 944
    Top = 200
  end
  object dtsPlaneacionesClases: TSQLDataSet
    CommandText = 
      'select * from PLANEACIONES_CLASES'#13#10'where ID_PLANEACION_UNIDAD = ' +
      ':ID_PLANEACION_UNIDAD'
    DataSource = dsPlaneacionezUnidadez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_UNIDAD'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 744
    Top = 256
  end
  object dsPlaneacionezUnidadez: TDataSource
    DataSet = dtsPlaneacionesUnidades
    Left = 688
    Top = 200
  end
  object dtsEvaluaciones: TSQLDataSet
    CommandText = 
      'select * from EVALUACIONES'#13#10'where ID_PLANEACION_UNIDAD = :ID_PLA' +
      'NEACION_UNIDAD'
    DataSource = dsPlaneacionezUnidadez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_UNIDAD'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 632
    Top = 256
  end
  object dtsPlaneacionesUnidades: TSQLDataSet
    CommandText = 
      'select * from PLANEACIONES_UNIDADES'#13#10'where ID_PLANEACION_GENERAL' +
      ' = :ID_PLANEACION_GENERAL'
    DataSource = dsPlaneacionezGeneralez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 512
    Top = 256
  end
  object dtsAcuerdos: TSQLDataSet
    CommandText = 
      'select * from ACUERDOS'#13#10'where ID_PLANEACION_GENERAL = :ID_PLANEA' +
      'CION_GENERAL'
    DataSource = dsPlaneacionezGeneralez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 400
    Top = 256
  end
  object dtsReuniones: TSQLDataSet
    CommandText = 
      'select * from REUNIONES'#13#10'where ID_PLANEACION_GENERAL = :ID_PLANE' +
      'ACION_GENERAL'
    DataSource = dsPlaneacionezGeneralez
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLANEACION_GENERAL'
        ParamType = ptInput
      end>
    SQLConnection = cntData
    Left = 320
    Top = 256
  end
  object dtsInstrumentosEvaluacion: TSQLDataSet
    CommandText = 'select * from INSTRUMENTOS_EVALUACION'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntData
    Left = 1120
    Top = 64
  end
  object dspInstrumentosEvaluacion: TDataSetProvider
    DataSet = dtsInstrumentosEvaluacion
    Left = 1128
    Top = 72
  end
end
