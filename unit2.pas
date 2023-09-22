unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
        TOperacao = (tSoma, tDiminuir, tMulti, tDivi, tClear);
  { TForm2 }

  TForm2 = class(TForm)
    Button10: TButton;
    diminuir: TButton;
    dividir: TButton;
    limpar: TButton;
    multi: TButton;
    num1: TButton;
    num2: TButton;
    num3: TButton;
    num4: TButton;
    num5: TButton;
    num6: TButton;
    num7: TButton;
    num8: TButton;
    num9: TButton;
    result: TButton;
    somar: TButton;
    valor: TEdit;
    vir: TButton;
    procedure limparClick(Sender: TObject);
    procedure num1Click(Sender: TObject);
    procedure resultClick(Sender: TObject);
    procedure somarClick(Sender: TObject);
    procedure valorChange(Sender: TObject);
  private
    primeNumero: LongInt;
    operadorSel: TOperacao;
    limparTela: Boolean;
  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.num1Click(Sender: TObject);
begin
  if limparTela then
  begin
  valor.Text:='';
  limparTela:= false;
  end;
  valor.Text:=FloatToStr(StrToFloat(valor.Text + TButton(Sender).Caption));
end;

procedure TForm2.resultClick(Sender: TObject);
begin
  if Not limparTela then;
      case operadorSel of
      tSoma:valor.Text:= IntToStr(StrToInt(valor.Text) + primeNumero);
      tDiminuir:valor.Text:= IntToStr(primeNumero - StrToInt(valor.Text));
      tMulti:valor.Text:= IntToStr(StrToInt(valor.Text) * primeNumero);
      tDivi:valor.Text:= IntToStr(primeNumero DIV StrToInt(valor.Text));
      end;
  limparTela:= True;
end;

procedure TForm2.somarClick(Sender: TObject);
begin
  resultClick(Sender);
     case TButton(Sender).Caption of
     '+' : operadorSel:=tSoma;
     '-' : operadorSel:=tDiminuir;
     'x' : operadorSel:=tMulti;
     '÷' : operadorSel:=tDivi;
     End;
  primeNumero:= StrToInt(valor.Text);
  limparTela:=True;
end;

procedure TForm2.valorChange(Sender: TObject);
begin

end;

procedure TForm2.limparClick(Sender: TObject);
begin
  valor.Text:='0';
  operadorSel:= tClear;
  limparTela:=False;
end;

end.

