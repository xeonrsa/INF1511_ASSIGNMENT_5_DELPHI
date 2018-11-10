unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Spin;

type
  TfrmINF1511Assignmet5 = class(TForm)
    pageconFORWHILE: TPageControl;
    tabForLoop: TTabSheet;
    tabWhileLoop: TTabSheet;
    listForLoop: TListBox;
    seStartFor: TSpinEdit;
    seEndFor: TSpinEdit;
    lblStartFor: TLabel;
    lblEndFor: TLabel;
    btnCountFor: TButton;
    btnExecFor: TButton;
    btnConcatFor: TButton;
    btnResetFor: TButton;
    listWhileLoop: TListBox;
    seStartWhile: TSpinEdit;
    seEndWhile: TSpinEdit;
    lblStartWhile: TLabel;
    lblEndWhile: TLabel;
    btnCountWhile: TButton;
    btnExecWhile: TButton;
    btnConcatWhile: TButton;
    btnResetWhile: TButton;
    procedure btnCountWhileClick(Sender: TObject);
    procedure btnResetWhileClick(Sender: TObject);
    procedure btnExecWhileClick(Sender: TObject);
    procedure btnCountForClick(Sender: TObject);
    procedure btnExecForClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmINF1511Assignmet5: TfrmINF1511Assignmet5;

implementation

{$R *.dfm}

procedure TfrmINF1511Assignmet5.btnCountWhileClick(Sender: TObject);
Var
  // Declare Required vars
  iCount, iStart, iEnd, iValue : Integer;
begin
  Try //(Use Try Finally becuase EXIT is called and if not in finally code will not be executed and cursor can get stuck at HourGlass)
    // Set Cursor to Hourglass - Shows program is busy
    Screen.Cursor := crHourGlass;
    // Get input from User
    iStart := INF1511Assignmet5.seStartWhile.Value;
    iEnd   := INF1511Assignmet5.seEndWhile.Value;
    // Validate user input, inform if any problem comes up
    If (iStart = iEnd) Then Begin
      MessageDlg('Start and End Values cannot be the same, no loop will execute!',mtWarning,[mbOK],0);
      Exit;
    End;
    If (iEnd < iStart) Then Begin
      MessageDlg('End Value cannot be smaller than Start Value, this will cuase an infanite loop!',mtError,[mbOK],0);
      Exit;
    End;
    // Set Count to 0, else random number is chosen
    iCount := 0;
    // Assign Start to Value, I do this becuase iValue can then be edited and iStart will remain the same if ever needed again
    iValue := iStart;
    // Add Starting line to ListBox
    INF1511Assignmet5.listWhileLoop.Items.Add('** START OF WHILE LOOP (COUNT) **');
    INF1511Assignmet5.listWhileLoop.Items.Add('DATE: ' + DateTimeToStr(Now));
    // Run While loop starting at iStart and ending at iEnd
    While (iValue <= iEnd) Do Begin
      Inc(iCount);
      INF1511Assignmet5.listWhileLoop.Items.Add('DIGIT NUMBER ' + IntToStr(iCount) + ' IS ' + IntToStr(iValue));
      Inc(iValue);
    End;
    // Add Ending line to ListBox
    INF1511Assignmet5.listWhileLoop.Items.Add('** END OF WHILE LOOP (COUNT) **');
  Finally
    // set cursor back to default - show program is finished
    Screen.Cursor := crDefault;
  End;
end;

procedure TfrmINF1511Assignmet5.btnResetWhileClick(Sender: TObject);
begin
  // Clear ListBox
  INF1511Assignmet5.listWhileLoop.Items.Clear;
  // Reset Start Value
  INF1511Assignmet5.seStartWhile.Value := 0;
  // Reset End Value
  INF1511Assignmet5.seEndWhile.Value := 0;
end;

procedure TfrmINF1511Assignmet5.btnExecWhileClick(Sender: TObject);
Var
  // Declare Required vars
  iCount, iStart, iEnd, iValue, iTotal : Integer;
begin
  Try //(Use Try Finally becuase EXIT is called and if not in finally code will not be executed and cursor can get stuck at HourGlass)
    // Set Cursor to Hourglass - Shows program is busy
    Screen.Cursor := crHourGlass;
    // Get input from User
    iStart := INF1511Assignmet5.seStartWhile.Value;
    iEnd   := INF1511Assignmet5.seEndWhile.Value;
    // Validate user input, inform if any problem comes up
    If (iStart = iEnd) Then Begin
      MessageDlg('Start and End Values cannot be the same, no loop will execute!',mtWarning,[mbOK],0);
      Exit;
    End;
    If (iEnd < iStart) Then Begin
      MessageDlg('End Value cannot be smaller than Start Value, this will cuase an infanite loop!',mtError,[mbOK],0);
      Exit;
    End;
    // Set iCount and iTotal to 0, else random number is chosen
    iCount := 0;
    iTotal := 0;
    // Assign Start to Value, I do this becuase iValue can then be edited and iStart will remain the same if ever needed again
    iValue := iStart;
    // Add Starting line to ListBox
    INF1511Assignmet5.listWhileLoop.Items.Add('** START OF WHILE LOOP (EXECUTION) **');
    INF1511Assignmet5.listWhileLoop.Items.Add('DATE: ' + DateTimeToStr(Now));
    // Run While loop starting at iStart and ending at iEnd
    While (iValue <= iEnd) Do Begin
      Inc(iCount);
      iTotal := iTotal + iValue;
      INF1511Assignmet5.listWhileLoop.Items.Add('DIGIT NUMBER ' + IntToStr(iCount) + ' IS ' + IntToStr(iTotal));
      Inc(iValue);
    End;
    // Add Ending line to ListBox
    INF1511Assignmet5.listWhileLoop.Items.Add('** END OF WHILE LOOP (COUNT) **');
  Finally
    // set cursor back to default - show program is finished
    Screen.Cursor := crDefault;
  End;
end;

procedure TfrmINF1511Assignmet5.btnCountForClick(Sender: TObject);
Var
  // Declare Required vars
  iCount, iStart, iEnd, iValue : Integer;
begin
  Try //(Use Try Finally becuase EXIT is called and if not in finally code will not be executed and cursor can get stuck at HourGlass)
    // Set Cursor to Hourglass - Shows program is busy
    Screen.Cursor := crHourGlass;
    // Get input from User
    iStart := INF1511Assignmet5.seStartFor.Value;
    iEnd   := INF1511Assignmet5.seEndFor.Value;
    // Validate user input, inform if any problem comes up
    If (iStart = iEnd) Then Begin
      MessageDlg('Start and End Values cannot be the same, no loop will execute!',mtWarning,[mbOK],0);
      Exit;
    End;
    If (iEnd < iStart) Then Begin
      MessageDlg('End Value cannot be smaller than Start Value, this will cuase an infanite loop!',mtError,[mbOK],0);
      Exit;
    End;
    // Set Count to 0, else random number is chosen
    iCount := 0;
    // Assign Start to Value, I do this becuase iValue can then be edited and iStart will remain the same if ever needed again
    iValue := iStart;
    // Add Starting line to ListBox
    INF1511Assignmet5.listForLoop.Items.Add('** START OF FOR LOOP (COUNT) **');
    INF1511Assignmet5.listForLoop.Items.Add('DATE: ' + DateTimeToStr(Now));
    // Run While loop starting at iStart and ending at iEnd
    For iValue := iStart to iEnd Do Begin
      Inc(iCount);
      INF1511Assignmet5.listForLoop.Items.Add('DIGIT NUMBER ' + IntToStr(iCount) + ' IS ' + IntToStr(iValue));
    End;
    // Add Ending line to ListBox
    INF1511Assignmet5.listForLoop.Items.Add('** END OF FOR LOOP (COUNT) **');
  Finally
    // set cursor back to default - show program is finished
    Screen.Cursor := crDefault;
  End;
end;

procedure TfrmINF1511Assignmet5.btnExecForClick(Sender: TObject);
Var
  // Declare Required vars
  iCount, iStart, iEnd, iValue, iTotal : Integer;
begin
  Try //(Use Try Finally becuase EXIT is called and if not in finally code will not be executed and cursor can get stuck at HourGlass)
    // Set Cursor to Hourglass - Shows program is busy
    Screen.Cursor := crHourGlass;
    // Get input from User
    iStart := INF1511Assignmet5.seStartFor.Value;
    iEnd   := INF1511Assignmet5.seEndFor.Value;
    // Validate user input, inform if any problem comes up
    If (iStart = iEnd) Then Begin
      MessageDlg('Start and End Values cannot be the same, no loop will execute!',mtWarning,[mbOK],0);
      Exit;
    End;
    If (iEnd < iStart) Then Begin
      MessageDlg('End Value cannot be smaller than Start Value, this will cuase an infanite loop!',mtError,[mbOK],0);
      Exit;
    End;
    // Set iCount and iTotal to 0, else random number is chosen
    iCount := 0;
    iTotal := 0;
    // Assign Start to Value, I do this becuase iValue can then be edited and iStart will remain the same if ever needed again
    iValue := iStart;
    // Add Starting line to ListBox
    INF1511Assignmet5.listForLoop.Items.Add('** START OF FOR LOOP (EXECUTION) **');
    INF1511Assignmet5.listForLoop.Items.Add('DATE: ' + DateTimeToStr(Now));
    // Run While loop starting at iStart and ending at iEnd
    For iValue := iStart to iEnd Do Begin
      Inc(iCount);
      iTotal := iTotal + iValue;
      INF1511Assignmet5.listForLoop.Items.Add('DIGIT NUMBER ' + IntToStr(iCount) + ' IS ' + IntToStr(iTotal));
    End;
    // Add Ending line to ListBox
    INF1511Assignmet5.listForLoop.Items.Add('** END OF FOR LOOP (COUNT) **');
  Finally
    // set cursor back to default - show program is finished
    Screen.Cursor := crDefault;
  End;
end;

end.


