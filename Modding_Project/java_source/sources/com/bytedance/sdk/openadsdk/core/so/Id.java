package com.bytedance.sdk.openadsdk.core.so;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Id implements com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB {

    /* renamed from: ba  reason: collision with root package name */
    private String f13255ba;
    private long oJ = 0;
    private long ZYk = 0;
    private int tB = 0;
    private String ex = null;
    private String Pfn = null;
    private final AtomicBoolean cFZ = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
    public void ZYk(String str) {
        this.Pfn = str;
        this.ZYk = SystemClock.elapsedRealtime();
        this.cFZ.set(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
    public void oJ(String str) {
        this.f13255ba = str;
        this.oJ = SystemClock.elapsedRealtime();
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.cFZ.tB
    public void oJ(int i10, String str, String str2) {
        this.tB = i10;
        this.ex = str;
        this.Pfn = str2;
        this.ZYk = SystemClock.elapsedRealtime();
        this.cFZ.set(false);
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str) {
        if (this.cFZ.get()) {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, false, str, "success", this.ZYk - this.oJ, this.Pfn, this.f13255ba, 0, null);
        } else {
            com.bytedance.sdk.openadsdk.ex.tB.oJ(cYVar, false, str, "fail", this.ZYk - this.oJ, this.Pfn, this.f13255ba, this.tB, this.ex);
        }
    }
}
