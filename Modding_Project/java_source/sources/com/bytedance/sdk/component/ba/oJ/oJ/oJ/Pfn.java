package com.bytedance.sdk.component.ba.oJ.oJ.oJ;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes3.dex */
public class Pfn implements com.bytedance.sdk.component.ba.oJ.oJ.Pfn {
    public static final Pfn oJ = new Pfn();
    private volatile SQLiteDatabase ZYk;

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public String Pfn() {
        return "logstatsbatch";
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public String ZYk() {
        return "adevent";
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public String ba() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public String ex() {
        return "logstats";
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public SQLiteDatabase oJ(Context context) {
        if (this.ZYk == null) {
            synchronized (this) {
                try {
                    if (this.ZYk == null) {
                        this.ZYk = new ex(context).getWritableDatabase();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public String tB() {
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.oJ.Pfn
    public String oJ() {
        return "loghighpriority";
    }
}
