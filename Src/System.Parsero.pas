unit System.Parsero;

interface

uses
  System.SysUtils, System.Classes, DB, System.JSON, DataSetConverter4D.Impl;

type

  TParseroHelper = class helper for TDataSet
  public
    procedure ToJSON(out AJSON: TJSONObject); overload;
    procedure ToJSON(out AJSON: TJSONArray); overload;
    procedure FromJSON(AJSON: TJSONObject); overload;
    procedure FromJSON(AJSON: TJSONArray); overload;
    procedure EditFromJson(AJSON: TJSONObject);
  end;

implementation

{ TParseroHelper }

procedure TParseroHelper.FromJSON(AJSON: TJSONObject);
begin
  TConverter.New.JSON.Source(AJSON).ToDataSet(Self);
end;

procedure TParseroHelper.EditFromJson(AJSON: TJSONObject);
begin
  TConverter.New.JSON.Source(AJSON).ToRecord(Self);
end;

procedure TParseroHelper.FromJSON(AJSON: TJSONArray);
begin
  TConverter.New.JSON.Source(AJSON).ToDataSet(Self);
end;

procedure TParseroHelper.ToJSON(out AJSON: TJSONObject);
begin
  if Self.IsEmpty then
    AJSON := TJSONObject.Create
  else
    AJSON := TConverter.New.DataSet(Self).AsJSONObject;
end;

procedure TParseroHelper.ToJSON(out AJSON: TJSONArray);
begin
  if Self.IsEmpty then
    AJSON := TJSONArray.Create
  else
    AJSON := TConverter.New.DataSet(Self).AsJSONArray;
end;

end.
