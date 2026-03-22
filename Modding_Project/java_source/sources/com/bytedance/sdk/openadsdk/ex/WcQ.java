package com.bytedance.sdk.openadsdk.ex;
/* loaded from: classes3.dex */
public class WcQ {
    public static String ZYk() {
        return "ALTER TABLE logstatsbatch ADD COLUMN encrypt INTEGER default 0";
    }

    public static String oJ() {
        return "CREATE TABLE IF NOT EXISTS logstatsbatch (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }
}
