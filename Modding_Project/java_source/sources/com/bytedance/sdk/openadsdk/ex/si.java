package com.bytedance.sdk.openadsdk.ex;
/* loaded from: classes3.dex */
public class si extends ex {
    public static String tB() {
        return new StringBuilder("CREATE TABLE IF NOT EXISTS adevent_applog (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0, channel INTEGER default 0)").toString();
    }
}
