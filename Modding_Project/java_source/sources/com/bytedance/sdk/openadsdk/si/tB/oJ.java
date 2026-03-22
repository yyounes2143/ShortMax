package com.bytedance.sdk.openadsdk.si.tB;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes3.dex */
public class oJ {
    private final SharedPreferences oJ;

    public oJ(Context context) {
        this.oJ = context.getSharedPreferences("pag_monitor_record", 0);
    }

    public long oJ() {
        return this.oJ.getLong("last_upload_time", 0L);
    }

    public void oJ(long j10) {
        SharedPreferences.Editor edit = this.oJ.edit();
        edit.putLong("last_upload_time", j10);
        edit.apply();
    }
}
