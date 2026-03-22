package com.apm.insight.j;

import android.os.Handler;
import android.text.TextUtils;
import com.apm.insight.e;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: DeviceIdTask.java */
/* loaded from: classes2.dex */
public final class c extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Handler handler) {
        super(handler, 15000L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (e.c().b()) {
            return;
        }
        String d10 = e.a().d();
        if (!TextUtils.isEmpty(d10) && !MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(d10)) {
            e.c().a(d10);
            com.apm.insight.a.a((Object) "[DeviceIdTask] did is ".concat(String.valueOf(d10)));
            return;
        }
        a(b());
        com.apm.insight.a.a((Object) "[DeviceIdTask] did is null, continue check.");
    }
}
