//---------------------------------------------------------------------------

#include <vcl.h>
#include <string>
#include <algorithm>
#pragma hdrstop

#include "BfOptMF.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CGAUGES"
#pragma link "TFlatButtonUnit"
#pragma link "TFlatGaugeUnit"
#pragma link "TFlatMemoUnit"
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
std::string fn(int x){
    if(!x) return "0";
        std::string s,s2;
        while(x){
            s.push_back(x%10 + '0');
            x/=10;
        }
    std::reverse(s.begin(),s.end());
    return s;
}

void replaceAll(std::string& str, const std::string& from, const std::string& to) {
    if(from.empty())
        return;
    size_t start_pos = 0;
    while((start_pos = str.find(from, start_pos)) != std::string::npos) {
        str.replace(start_pos, from.length(), to);
        start_pos += to.length(); // In case 'to' contains 'from', like replacing 'x' with 'yx'
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FlatButton1Click(TObject *Sender)
{
  std::string s = Source->Text.c_str();
  std::string t = "";
  FlatGauge1->MaxValue = 4980;
  FlatGauge1->Progress = 0;
  //+, max 999.
  for(int i = 999; i > 3; i--){
    t = "";
    for(int j = 0; j < i; j++){
      t += "+";
    }
    std::string a = "$" + fn(i);
    if(a.length() == 1) a = "$000";
    if(a.length() == 2) a = "$00" + fn(i);
    if(a.length() == 3) a = "$0" + fn(i);
    if(a.length() == 4) a = "$" + fn(i);
    replaceAll(s, t, a);
    FlatGauge1->Progress += 1;
  }
  for(int k = 999; k > 3; k--){
    t = "";
    for(int l = 0; l < k; l++){
      t += "-";
    }
    std::string a = "#" + fn(k);
    if(a.length() == 1) a = "#000";
    if(a.length() == 2) a = "#00" + fn(k);
    if(a.length() == 3) a = "#0" + fn(k);
    if(a.length() == 4) a = "#" + fn(k);
    replaceAll(s, t, a);
    FlatGauge1->Progress += 1;
  }
  for(int i = 999; i > 3; i--){
    t = "";
    for(int j = 0; j < i; j++){
      t += "<";
    }
    std::string a = "@" + fn(i);
    if(a.length() == 1) a = "@000";
    if(a.length() == 2) a = "@00" + fn(i);
    if(a.length() == 3) a = "@0" + fn(i);
    if(a.length() == 4) a = "@" + fn(i);
    replaceAll(s, t, a);
    FlatGauge1->Progress += 1;
  }
  for(int k = 999; k > 3; k--){
    t = "";
    for(int l = 0; l < k; l++){
      t += ">";
    }
    std::string a = "!" + fn(k);
    if(a.length() == 1) a = "!000";
    if(a.length() == 2) a = "!00" + fn(k);
    if(a.length() == 3) a = "!0" + fn(k);
    if(a.length() == 4) a = "!" + fn(k);
    replaceAll(s, t, a);
    FlatGauge1->Progress += 1;
  }
  for(int k = 999; k > 3; k--){
    t = "";
    for(int l = 0; l < k; l++){
      t += ".";
    }
    std::string a = "*" + fn(k);
    if(a.length() == 1) a = "*000";
    if(a.length() == 2) a = "*00" + fn(k);
    if(a.length() == 3) a = "*0" + fn(k);
    if(a.length() == 4) a = "*" + fn(k);
    replaceAll(s, t, a);
    FlatGauge1->Progress += 1;
  }
  Source->Text = AnsiString(s.c_str());
}
//---------------------------------------------------------------------------
