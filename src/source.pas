unit source;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  StdCtrls;

type

  { TMenuCalc }

  TMenuCalc = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Rumus: TPanel;
    Rumus1: TPanel;
    TipePK: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    RumusBox: TGroupBox;
    KalkulatorBox: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    LogoPanel: TPanel;
    MainMenu: TMainMenu;
    MenuBar: TMenuItem;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure LogoPanelClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure TipePKChange(Sender: TObject);
    procedure ChangeCondition; // Mengganti Kondisi Tipe Packing Kayu;

  private

  public

  end;

var
  MenuCalc: TMenuCalc;
  var p, l, t, hrg, volume : real;
implementation

{$R *.lfm}

{ TMenuCalc }

procedure TMenuCalc.MenuItem1Click(Sender: TObject);
begin
  close;
end;

procedure TMenuCalc.TipePKChange(Sender: TObject);
begin
  if TipePK.Caption = 'Packing Kayu 1' then
  begin
    Edit1.Caption:='13';
    Edit2.Caption:='5';
    Edit3.Caption:='5';
    Edit4.Caption:='6000';
 Label15.Caption:=Edit1.Caption;
 Label18.Caption:=Edit2.Caption;
 Label19.Caption:=Edit3.Caption;
 Label23.Caption:=Edit4.Caption;

  end
  else if TipePK.Caption = 'Packing Kayu 2' then
  begin
    Edit1.Caption:='17';
    Edit2.Caption:='9';
    Edit3.Caption:='9';
    Edit4.Caption:='6000';
 Label15.Caption:=Edit1.Caption;
 Label18.Caption:=Edit2.Caption;
 Label19.Caption:=Edit3.Caption;
 Label23.Caption:=Edit4.Caption;

 end else
   if TipePK.Caption = 'Packing Kayu 3' then
  begin
    Edit1.Caption:='19';
    Edit2.Caption:='12';
    Edit3.Caption:='12';
    Edit4.Caption:='6000';
 Label15.Caption:=Edit1.Caption;
 Label18.Caption:=Edit2.Caption;
 Label19.Caption:=Edit3.Caption;
 Label23.Caption:=Edit4.Caption;
 end;
end;

procedure TMenuCalc.ChangeCondition;
begin
 end;

procedure TMenuCalc.LogoPanelClick(Sender: TObject);
begin

end;

procedure TMenuCalc.Image2Click(Sender: TObject);
begin

end;

procedure TMenuCalc.FormCreate(Sender: TObject);
begin

end;

procedure TMenuCalc.Button1Click(Sender: TObject);
begin

end;

procedure TMenuCalc.Button2Click(Sender: TObject);

begin
  if (Edit5.Caption = '') or (Edit6.Caption ='') or (Edit7.Caption ='') then
  begin
  ShowMessage('Masukan Nilai Angka');
  end
  else
  begin
  p := strtofloat(edit5.Caption);
  l :=  strtofloat(Edit6.Caption);
  t := strtofloat(edit7.Caption);
  hrg := strtofloat(edit4.Caption);
  volume := (p + strtofloat(Edit1.Caption))*(l + strtofloat(Edit2.Caption)) * (strtofloat(Edit3.Caption))/ hrg;
  Label11.Caption := floattostr(volume)+' KG';
  end
  end;

end.

