package com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ;

import android.content.Context;
import com.bytedance.sdk.component.ba.oJ.so;
/* loaded from: classes3.dex */
public class ex extends oJ {
    public ex(Context context, com.bytedance.sdk.component.ba.oJ.ex.ZYk.oJ oJVar) {
        super(context, oJVar);
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ, com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB
    public String ZYk() {
        com.bytedance.sdk.component.ba.oJ.oJ.Pfn ex = so.cFZ().ex();
        if (ex != null) {
            return ex.oJ();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.tB
    protected long ba() {
        return com.bytedance.sdk.component.ba.oJ.cFZ.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ
    public byte ex() {
        return (byte) 0;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.oJ.oJ.oJ
    public byte tB() {
        return (byte) 1;
    }

    public static String tB(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }
}
