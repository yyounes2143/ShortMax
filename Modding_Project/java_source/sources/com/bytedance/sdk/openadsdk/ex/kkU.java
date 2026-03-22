package com.bytedance.sdk.openadsdk.ex;
/* loaded from: classes3.dex */
public class kkU extends ex {
    public static String ex() {
        return "ALTER TABLE loghighpriority ADD COLUMN encrypt INTEGER default 0";
    }

    public static String tB() {
        return "CREATE TABLE IF NOT EXISTS loghighpriority (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }
}
