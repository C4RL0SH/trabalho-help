unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls,
  Menus,ExtCtrls, Unit2, Unit3, Unit4;

type

  { TForm1 }

  TForm1 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    Calculadora: TSpeedButton;
    mensagem: TSpeedButton;
    animacao: TSpeedButton;
    procedure animacaoClick(Sender: TObject);
    procedure CalculadoraClick(Sender: TObject);
    procedure mensagemClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Form2: TForm2;
  Form3: TForm3;
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CalculadoraClick(Sender: TObject);
begin
  Form2 := TForm2.create(Application);
  Form2.ShowModal;
end;

procedure TForm1.animacaoClick(Sender: TObject);
begin
  Form4:= TForm4.create(Application);
  Form4.ShowModal;
end;

procedure TForm1.mensagemClick(Sender: TObject);
begin
  Form3 := TForm3.Create(Application);
  Form3.ShowModal;
end;

end.

