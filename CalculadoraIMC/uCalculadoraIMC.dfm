object calculadora: Tcalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora De Indice De Massa Corporal (IMC)'
  ClientHeight = 445
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 80
    Top = 138
    Width = 63
    Height = 32
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 350
    Top = 138
    Width = 49
    Height = 32
    Caption = 'Peso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 230
    Top = 250
    Width = 51
    Height = 32
    Caption = 'Sexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 121
    Align = alTop
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 628
    object Label1: TLabel
      Left = 16
      Top = 45
      Width = 441
      Height = 30
      Caption = 'Calculadora De Indice De Massa Corporal (IMC)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object sexo: TComboBox
    Left = 168
    Top = 288
    Width = 169
    Height = 23
    Style = csDropDownList
    TabOrder = 1
    OnEnter = sexoEnter
    OnExit = sexoExit
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object altura: TEdit
    Left = 40
    Top = 176
    Width = 145
    Height = 23
    TabOrder = 2
    TextHint = 'Digite sua altura...'
    OnEnter = alturaEnter
    OnExit = alturaExit
    OnKeyPress = alturaKeyPress
  end
  object peso: TEdit
    Left = 302
    Top = 176
    Width = 145
    Height = 23
    TabOrder = 3
    TextHint = 'Digite seu peso...'
    OnEnter = pesoEnter
    OnExit = pesoExit
  end
  object resultado: TButton
    Left = 192
    Top = 349
    Width = 121
    Height = 41
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = resultadoClick
  end
  object calculo: TButton
    Left = 144
    Top = 396
    Width = 217
    Height = 41
    Caption = 'Como funciona o calculo do IMC?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = calculoClick
  end
end
