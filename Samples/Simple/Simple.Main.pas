unit Simple.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.Parsero;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    FDMemTablePeople: TFDMemTable;
    FDMemTablePeopleid: TIntegerField;
    FDMemTablePeoplename: TStringField;
    FDMemTablePeopleage: TIntegerField;
    DataSourcePeople: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Parsero: TParsero;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  System.JSON;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
  LJSON: TJSONValue;
begin
  FDMemTablePeople.EmptyDataSet;
  LJSON := TJSONObject.ParseJSONValue(Memo1.Lines.Text);

  if LJSON is TJSONArray then
    FDMemTablePeople.FromJSON(TJSONArray(LJSON))
  else
    FDMemTablePeople.FromJSON(TJSONObject(LJSON));
end;

procedure TForm5.Button2Click(Sender: TObject);
var
//  LJSON: TJSONArray;
  LJSON: TJSONObject;
begin
  FDMemTablePeople.ToJSON(LJSON);
  Memo1.Lines.Text := LJSON.ToJSON;
end;

end.
