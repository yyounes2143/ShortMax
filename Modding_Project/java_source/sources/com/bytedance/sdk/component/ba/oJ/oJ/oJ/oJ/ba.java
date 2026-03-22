package com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ;

import android.content.Context;
import com.bytedance.sdk.component.ba.oJ.so;
/* loaded from: classes3.dex */
public class ba extends cFZ {
    public ba(Context context, com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        super(context, oJVar);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.cFZ, com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB
    public String ZYk() {
        return so.cFZ().ex().Pfn();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.cFZ
    public byte oJ() {
        return (byte) 1;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.cFZ
    public byte tB() {
        return (byte) 3;
    }

    public static String oJ(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }
}
