unit Unit4;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    aviaoesquerda: TImage;
    Button1: TButton;
    esquerda: TButton;
    direita: TButton;
    direita2: TImage;
    direita1: TImage;
    esquerda2: TImage;
    aviaodireita: TImage;
    Image2: TImage;
    esquerda1: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure direitaClick(Sender: TObject);

    procedure esquerdaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;
  ImgLeft, ImgTop: Integer;
implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.Timer1Timer(Sender: TObject);
begin
       direita1.Visible:=True;
       esquerda1.Visible:=True;

       direita2.Visible:=False;
       esquerda2.Visible:=False;

       aviaodireita.Visible:=True;
       aviaoesquerda.Visible:=False;

       direita1.left:=direita1.Left-10;
       esquerda1.Left:=esquerda1.Left+10;
       direita2.Left:=direita2.Left-10;
       esquerda2.left:=esquerda2.Left+10;

       aviaodireita.left:=aviaodireita.Left-10;
       aviaoesquerda.left:=aviaoesquerda.Left-10;
end;

procedure TForm4.Timer2Timer(Sender: TObject);
begin
       direita1.Visible:=False;
       esquerda1.Visible:=False;

       direita2.Visible:=True;
       esquerda2.Visible:=True;

       aviaodireita.Visible:=False;
       aviaoesquerda.Visible:=True;

     esquerda1.Left:=esquerda1.Left+10;
     direita1.Left:=direita1.Left-10;

     esquerda2.left:=esquerda2.Left+10;
     direita2.Left:=direita2.Left-10;

     aviaodireita.left:=aviaodireita.Left-10;
       aviaoesquerda.left:=aviaoesquerda.Left-10;
end;

procedure TForm4.Timer3Timer(Sender: TObject);
begin
       direita1.Visible:=False;
       esquerda1.Visible:=False;

       direita2.Visible:=True;
       esquerda2.Visible:=True;

       aviaodireita.Visible:=False;
       aviaoesquerda.Visible:=True;

       direita1.left:=direita1.Left+10;
       esquerda1.Left:=esquerda1.Left-10;

       direita2.Left:=direita2.Left+10;
       esquerda2.left:=esquerda2.Left-10;

       aviaodireita.left:=aviaodireita.Left+10;
       aviaoesquerda.left:=aviaoesquerda.Left+10;
end;

procedure TForm4.Timer4Timer(Sender: TObject);
begin
      direita1.Visible:=True;
       esquerda1.Visible:=True;

       direita2.Visible:=False;
       esquerda2.Visible:=False;

       aviaodireita.Visible:=False;
       aviaoesquerda.Visible:=True;

     esquerda1.Left:=esquerda1.Left-10;
  direita1.Left:=direita1.Left+10;

  esquerda2.left:=esquerda2.Left-10;
  direita2.Left:=direita2.Left+10;

  aviaodireita.left:=aviaodireita.Left+10;
       aviaoesquerda.left:=aviaoesquerda.Left+10;
end;

procedure TForm4.direitaClick(Sender: TObject);
begin
     Timer1.Enabled:=True;
     Timer2.Enabled:=True;
     Timer3.Enabled:=False;
     Timer4.Enabled:=False;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
     Timer1.Enabled:=False;
     Timer2.Enabled:=False;
     Timer3.Enabled:=False;
     Timer4.Enabled:=False;
end;


procedure TForm4.esquerdaClick(Sender: TObject);
begin
     Timer1.Enabled:=False;
     Timer2.Enabled:=False;
     Timer3.Enabled:=True;
     Timer4.Enabled:=True;


end;


end.

