//+------------------------------------------------------------------+
//|                                                    breakeven.mq4 |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- create timer
   EventSetTimer(60);
int k=20;
for(int i=0;i<OrdersTotal();i++)
  {
   createButtom("name"+(string)i,k);
   k+=20;
  }
 
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   EventKillTimer();

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---

  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---

  }
//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester()
  {
//---
   double ret=0.0;
//---

//---
   return(ret);
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---

  }
//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool createButtom(string name,int y)
  {
  long chart_ID = ChartID();
   if(!ObjectCreate(chart_ID,name,OBJ_BUTTON,0,0,0))
     {
      Print(__FUNCTION__, ": failed to create the button! Error code = ",GetLastError());
      return(false);
     }
     ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,10);
     ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y);
   return(true);
  }
//+------------------------------------------------------------------+
