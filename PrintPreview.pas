unit PrintPreview;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PagePrnt, StdCtrls, Buttons, Db, DBTables, Grids, DBGrids;

type
  TPrintPreview = class(TForm)
    PagePrinter1: TPagePrinter;
    ExitButton: TBitBtn;
    PrintButton: TBitBtn;
    NextButton: TBitBtn;
    BackButton: TBitBtn;
    PageCountLabel: TLabel;
    ZoomOut: TBitBtn;
    ZoomIn: TBitBtn;
    ZoomFit: TBitBtn;
    Full: TBitBtn;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1Contact: TStringField;
    procedure FormShow(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure NextButtonClick(Sender: TObject);
    procedure BackButtonClick(Sender: TObject);
    procedure ZoomInClick(Sender: TObject);
    procedure ZoomOutClick(Sender: TObject);
    procedure ZoomFitClick(Sender: TObject);
    procedure FullClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  PrintPreview1: TPrintPreview;

implementation

{$R *.DFM}

procedure TPrintPreview.FormShow(Sender: TObject);
var
     columnHeaders: array [0..168] of string;
     columnsPage1: string;
     columnsPage2: string;
     columnsPage3: string;
     columnsPage4: string;
     columnsPage5: string;
     columnsPage6: string;
     columnsPage7: string;
     columnsPage8: string;
     columnsPage9: string;
     columnsPage10: string;
     columnsPage11: string;
     columnsPage12: string;
     i: Integer;
     Data: String;
     Datas: TStrings;
begin
     Query1.Active := False;
     Query1.ExecSQL;


     Query1.Active := True;


     
     columnHeaders[0] := 'BUSINESS ID';
     columnHeaders[1] := '|STUB No.';
     columnHeaders[2] := '|OR No.';
     columnHeaders[3] := '|OR DATE';
     columnHeaders[4] := '|OR AMOUNT';
     columnHeaders[5] := '|TAX CREDIT APPLIED';
     columnHeaders[6] := '|TAX CREDIT NP';
     columnHeaders[7] := '|ADM';
     columnHeaders[8] := '|A_T';
     columnHeaders[9] := '|BF';
     columnHeaders[10] := '|DLQ';
     columnHeaders[11] := '|DT1';
     columnHeaders[12] := '|EF';
     columnHeaders[13] := '|FC';
     columnHeaders[14] := '|FI';

     columnHeaders[15] := 'BC';
     columnHeaders[16] := '|GF';
     columnHeaders[17] := '|HC';
     columnHeaders[18] := '|IM';
     columnHeaders[19] := '|I_N';
     columnHeaders[20] := '|L2';
     columnHeaders[21] := '|L3';
     columnHeaders[22] := '|LF1';
     columnHeaders[23] := '|MI';
     columnHeaders[24] := '|MP';
     columnHeaders[25] := '|OTH1';
     columnHeaders[26] := '|PEN';
     columnHeaders[27] := '|PEZA';
     columnHeaders[28] := '|RE1';
     columnHeaders[29] := '|SF';

     columnHeaders[30] := 'ST1';
     columnHeaders[31] := '|ZZZ9';
     columnHeaders[32] := '|ML_RET';
     columnHeaders[33] := '|ADS';
     columnHeaders[34] := '|AP1';
     columnHeaders[35] := '|AP2';
     columnHeaders[36] := '|BFT';
     columnHeaders[37] := '|BNK';
     columnHeaders[38] := '|BRE';
     columnHeaders[39] := '|COO';
     columnHeaders[40] := '|DS';
     columnHeaders[41] := '|ENG';
     columnHeaders[42] := '|E_M';
     columnHeaders[43] := '|E_W';
     columnHeaders[44] := '|E1M';

     columnHeaders[45] := 'E1R';
     columnHeaders[46] := '|E1W';
     columnHeaders[47] := '|E2M';
     columnHeaders[48] := '|E2R';
     columnHeaders[49] := '|E2W';
     columnHeaders[50] := '|E3M';
     columnHeaders[51] := '|E3R';
     columnHeaders[52] := '|E3W';
     columnHeaders[53] := '|EEA';
     columnHeaders[54] := '|EEF';
     columnHeaders[55] := '|FE';
     columnHeaders[56] := '|FIX';
     columnHeaders[57] := '|FLI';
     columnHeaders[58] := '|HTL';
     columnHeaders[59] := '|I_E';

     columnHeaders[60] := 'I_N_1';
     columnHeaders[61] := '|INS';
     columnHeaders[62] := '|LWT';
     columnHeaders[63] := '|M1E';
     columnHeaders[64] := '|M_N_I';
     columnHeaders[65] := '|M2E';
     columnHeaders[66] := '|M2N';
     columnHeaders[67] := '|M3E';
     columnHeaders[68] := '|M3N';
     columnHeaders[69] := '|MS';
     columnHeaders[70] := '|OSA';
     columnHeaders[71] := '|OSB';
     columnHeaders[72] := '|OSC';
     columnHeaders[73] := '|OSF';
     columnHeaders[74] := '|PC';

     columnHeaders[75] := 'PS';
     columnHeaders[76] := '|REC';
     columnHeaders[77] := '|RED';
     columnHeaders[78] := '|PER';
     columnHeaders[79] := '|RTE';
     columnHeaders[80] := '|RTN';
     columnHeaders[81] := '|RTP';
     columnHeaders[82] := '|RTR';
     columnHeaders[83] := '|SBP';
     columnHeaders[84] := '|SEF';
     columnHeaders[85] := '|SEG';
     columnHeaders[86] := '|SEO';
     columnHeaders[87] := '|SHC';
     columnHeaders[88] := '|SUB';
     columnHeaders[89] := '|W_E';

     columnHeaders[90] := 'W_N';
     columnHeaders[91] := '|W_P';
     columnHeaders[92] := '|WE';
     columnHeaders[93] := '|WN';
     columnHeaders[94] := '|TRD';
     columnHeaders[95] := '|AINS';
     columnHeaders[96] := '|FPF';
     columnHeaders[97] := '|SGN';
     columnHeaders[98] := '|P-P';
     columnHeaders[99] := '|M-P';
     columnHeaders[100] := '|E-P';
     columnHeaders[101] := '|BLDG';
     columnHeaders[102] := '|FIRE';
     columnHeaders[103] := '|LUZ';
     columnHeaders[104] := '|PP';

     columnHeaders[105] := 'EP';
     columnHeaders[106] := '|MECH';
     columnHeaders[107] := '|OPF';
     columnHeaders[108] := '|SPF';
     columnHeaders[109] := '|NSP';
     columnHeaders[110] := '|DPF';
     columnHeaders[111] := '|LG';
     columnHeaders[112] := '|OTH';
     columnHeaders[113] := '|BP';
     columnHeaders[114] := '|710';
     columnHeaders[115] := '|720';
     columnHeaders[116] := '|AHC';
     columnHeaders[117] := '|B';
     columnHeaders[118] := '|BUN';
     columnHeaders[119] := '|CHOL';

     columnHeaders[120] := 'CLOT';
     columnHeaders[121] := '|CREA';
     columnHeaders[122] := '|DT';
     columnHeaders[123] := '|ESR';
     columnHeaders[124] := '|FBS';
     columnHeaders[125] := '|GS';
     columnHeaders[126] := '|HBAI';
     columnHeaders[127] := '|HSBA';
     columnHeaders[128] := '|HOL';
     columnHeaders[129] := '|HIV';
     columnHeaders[130] := '|L1';
     columnHeaders[131] := '|L4';
     columnHeaders[132] := '|L5';
     columnHeaders[133] := '|L6';
     columnHeaders[134] := '|L7';

     columnHeaders[135] := 'L8';
     columnHeaders[136] := '|L9';
     columnHeaders[137] := '|L10';
     columnHeaders[138] := '|L11';
     columnHeaders[139] := '|L12';
     columnHeaders[140] := '|L13';
     columnHeaders[141] := '|L14';
     columnHeaders[142] := '|L15';
     columnHeaders[143] := '|L16';
     columnHeaders[144] := '|L20';
     columnHeaders[145] := '|L21';
     columnHeaders[146] := '|L22';
     columnHeaders[147] := '|L23';
     columnHeaders[148] := '|PREG';
     columnHeaders[149] := '|SGOT';

     columnHeaders[150] := 'SGPT';
     columnHeaders[151] := '|SHI';
     columnHeaders[152] := '|TRI';
     columnHeaders[153] := '|UA';
     columnHeaders[154] := '|WP1';
     columnHeaders[155] := '|H2';
     columnHeaders[156] := '|SP1';
     columnHeaders[157] := '|ORD';
     columnHeaders[158] := '|F001';
     columnHeaders[159] := '|F002';
     columnHeaders[160] := '|F003';
     columnHeaders[161] := '|F004';
     columnHeaders[162] := '|F005';
     columnHeaders[163] := '|B1';
     columnHeaders[164] := '|B2';

     columnHeaders[165] := 'B3';
     columnHeaders[166] := '|B4';
     columnHeaders[167] := '|B5';
     columnHeaders[168] := '|R1';

     columnsPage1 := '';
     for i := 0 to 14 do
     begin
          columnsPage1 := columnsPage1 + columnHeaders[i];
     end;

     columnsPage2 := '';
     for i := 15 to 29 do
     begin
          columnsPage2 := columnsPage2 + columnHeaders[i];
     end;

     columnsPage3 := '';
     for i := 30 to 44 do
     begin
          columnsPage3 := columnsPage3 + columnHeaders[i];
     end;

     columnsPage4 := '';
     for i := 45 to 59 do
     begin
          columnsPage4 := columnsPage4 + columnHeaders[i];
     end;

     columnsPage5 := '';
     for i := 60 to 74 do
     begin
          columnsPage5 := columnsPage5 + columnHeaders[i];
     end;

columnsPage6 := '';
for i := 75 to 89 do
begin
     columnsPage6 := columnsPage6 + columnHeaders[i];
end;

columnsPage7 := '';
for i := 90 to 104 do
begin
     columnsPage7 := columnsPage7 + columnHeaders[i];
end;

columnsPage8 := '';
for i := 105 to 119 do
begin
     columnsPage8 := columnsPage8 + columnHeaders[i];
end;

columnsPage9 := '';
for i := 120 to 134 do
begin
     columnsPage9 := columnsPage9 + columnHeaders[i];
end;

columnsPage10 := '';
for i := 135 to 149 do
begin
     columnsPage10 := columnsPage10 + columnHeaders[i];
end;

columnsPage11 := '';
for i := 150 to 164 do
begin
     columnsPage11 := columnsPage11 + columnHeaders[i];
end;

columnsPage12 := '';
for i := 165 to 168 do
begin
     columnsPage12 := columnsPage12 + columnHeaders[i];
end;



     with PagePrinter1 do
     begin;
           BeginDoc;

           {1st page}
           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Style := [fsBold];
           WriteLine('City Government of Makati');
           WriteLine('Finance Department');
           WriteLine('Business Tax Division');
           NewLine;
           WriteLine('Breakdown of Payment per Official Receipt');
           Font.Style := [];
           WriteLine('Period Covered from: 2020 to 2023');
           NewLine;

           TableFormat := '^.9|^.9|^.9|^.4|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
           WriteTableLine(columnsPage1);
           Font.Name := 'Courier New';
           Font.Size := 6;
           NewLine;

           TableFormat := '>.9|^.9|>.9|^.4|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('|||2025|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

           FooterFont.Name := 'Arial';
           FooterFont.Size := 10;
           FooterFont.Style := [fsItalic];
           FooterFormat := '5.5|2|1.5|>1';
           Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 2';

           {2nd page}
           NewPage;

           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Style := [fsBold];
           WriteLine('City Government of Makati');
           WriteLine('Finance Department');
           WriteLine('Business Tax Division');
           NewLine;
           WriteLine('Breakdown of Payment per Official Receipt');
           Font.Style := [];
           WriteLine('Period Covered from: 2020 to 2023');
           NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
           WriteTableLine(columnsPage2);
           Font.Name := 'Courier New';
           Font.Size := 6;
           NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');


           FooterFont.Name := 'Arial';
           FooterFont.Size := 10;
           FooterFormat := '5.5|2|1.5|>1';
           FooterFont.Style := [fsItalic];
           Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 3';

           {3rd Page}
           NewPage;

           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Style := [fsBold];
           WriteLine('City Government of Makati');
           WriteLine('Finance Department');
           WriteLine('Business Tax Division');
           NewLine;
           WriteLine('Breakdown of Payment per Official Receipt');
           Font.Style := [];
           WriteLine('Period Covered from: 2020 to 2023');
           NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
           WriteTableLine(columnsPage3);
           Font.Name := 'Courier New';
           Font.Size := 6;
           NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

           FooterFont.Name := 'Arial';
           FooterFont.Size := 10;
           FooterFormat := '5.5|2|1.5|>1';
           FooterFont.Style := [fsItalic];
           Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 4';

           {4th Page}
           NewPage;

           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Style := [fsBold];
           WriteLine('City Government of Makati');
           WriteLine('Finance Department');
           WriteLine('Business Tax Division');
           NewLine;
           WriteLine('Breakdown of Payment per Official Receipt');
           Font.Style := [];
           WriteLine('Period Covered from: 2020 to 2023');
           NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
           WriteTableLine(columnsPage4);
           Font.Name := 'Courier New';
           Font.Size := 6;
           NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

           FooterFont.Name := 'Arial';
           FooterFont.Size := 10;
           FooterFormat := '5.5|2|1.5|>1';
           FooterFont.Style := [fsItalic];
           Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 5';

           {5th Page}
           NewPage;

           Font.Name := 'Arial';
           Font.Size := 10;
           Font.Style := [fsBold];
           WriteLine('City Government of Makati');
           WriteLine('Finance Department');
           WriteLine('Business Tax Division');
           NewLine;
           WriteLine('Breakdown of Payment per Official Receipt');
           Font.Style := [];
           WriteLine('Period Covered from: 2020 to 2023');
           NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
           WriteTableLine(columnsPage5);
           Font.Name := 'Courier New';
           Font.Size := 6;
           NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

           FooterFont.Name := 'Arial';
           FooterFont.Size := 10;
           FooterFormat := '5.5|2|1.5|>1';
           FooterFont.Style := [fsItalic];
           Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 6';

     {6th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage6);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 7';

{Repeat similar code segments for pages 7 to 12}

{7th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage7);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 8';

{Repeat similar code segments for pages 8 to 12}

{8th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage8);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 9';

{Repeat similar code segments for pages 9 to 12}

{9th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage9);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 10';

{10th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage10);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 11';

{11th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage11);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 12';

{12th Page}
NewPage;

Font.Name := 'Arial';
Font.Size := 10;
Font.Style := [fsBold];
WriteLine('City Government of Makati');
WriteLine('Finance Department');
WriteLine('Business Tax Division');
NewLine;
WriteLine('Breakdown of Payment per Official Receipt');
Font.Style := [];
WriteLine('Period Covered from: 2020 to 2023');
NewLine;

           TableFormat := '^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9|^.9';
WriteTableLine(columnsPage12);
Font.Name := 'Courier New';
Font.Size := 6;
NewLine;

           TableFormat := '>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9|>.9';
           WriteTableLine('999,999,999,999.00|500.00||2022|0.00|0.00|0.00|0.00|0.00|0.00|999,999,999,999.00|0.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|2023|323.00|1,700,006.06|9,999,999,999.00|76.80|0.81|150.00|5,345.00|23,432.79|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|500.00|999,999,999,999.00|2024|450.00|2,000,000.00|10,000,000,000.00|80.00|1.00|200.00|6,000.00|25,000.00|0.81|999,999,999,999.00|6,000.00');
           WriteTableLine('999,999,999,999.00|999,999,999,999.00|999,999,999,999.00|500.00|500.00|2,300,000.00|11,000,000,000.00|85.00|1.20|180.00|7,000.00|28,000.00|0.81|999,999,999,999.00|6,000.00');

FooterFont.Name := 'Arial';
FooterFont.Size := 10;
FooterFormat := '5.5|2|1.5|>1';
FooterFont.Style := [fsItalic];
Footer := 'This is a system generated report and does not require signature.|Date: 09/15/2023 10:02 AM|USERNAME|Page 13';

           EndDoc;
     end;
     {DisplayPagePrintPages(Sender);}


     PageCountLabel.Caption := Format('Page: %d of %d', [PagePrinter1.PageNumber, PagePrinter1.PageCount]);

     while (Query1.FindNext) do
     begin
          PageCountLabel.Caption := Query1.FieldByName('Contact').AsString;
     end;
     Query1.FindPrior;
     PageCountLabel.Caption := Query1.FieldByName('Contact').AsString;


end;


procedure TPrintPreview.ExitButtonClick(Sender: TObject);
begin
     Close;
end;

procedure TPrintPreview.NextButtonClick(Sender: TObject);
begin
     try
        PagePrinter1.PageNumber := PagePrinter1.PageNumber + 1;
        PageCountLabel.Caption := Format('Page: %d of %d', [PagePrinter1.PageNumber, PagePrinter1.PageCount]);
     except
     end;
end;

procedure TPrintPreview.BackButtonClick(Sender: TObject);
begin
     try
        PagePrinter1.PageNumber := PagePrinter1.PageNumber - 1;
        PageCountLabel.Caption := Format('Page: %d of %d', [PagePrinter1.PageNumber, PagePrinter1.PageCount]);
     except
     end;
end;

procedure TPrintPreview.ZoomInClick(Sender: TObject);
begin
     PagePrinter1.ZoomPercent := PagePrinter1.ZoomPercent + 5;
end;

procedure TPrintPreview.ZoomOutClick(Sender: TObject);
begin
     PagePrinter1.ZoomPercent := PagePrinter1.ZoomPercent - 5;
end;

procedure TPrintPreview.ZoomFitClick(Sender: TObject);
begin
     PagePrinter1.ZoomToFit;
end;

procedure TPrintPreview.FullClick(Sender: TObject);
begin
     PagePrinter1.ZoomPercent := 100;
end;

end.
  