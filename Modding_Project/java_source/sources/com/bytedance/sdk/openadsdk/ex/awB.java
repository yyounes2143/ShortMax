package com.bytedance.sdk.openadsdk.ex;
/* loaded from: classes3.dex */
public class awB {
    public static String ZYk() {
        return "ALTER TABLE logstats ADD COLUMN encrypt INTEGER default 0";
    }

    public static String oJ() {
        return "CREATE TABLE IF NOT EXISTS logstats (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , encrypt INTEGER default 0 , retry INTEGER default 0)";
    }
}
