package com.apm.insight.runtime;

import com.apm.insight.MonitorCrash;
/* compiled from: MonitorCrashInner.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private static MonitorCrash f7204a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f7205b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static int f7206c;

    public static MonitorCrash a() {
        if (f7204a == null) {
            MonitorCrash initSDK = MonitorCrash.initSDK(com.apm.insight.e.g(), "239017", 20089L, "2008-20250701130429", "com.apm.insight");
            f7204a = initSDK;
            initSDK.config().setChannel("release");
        }
        return f7204a;
    }

    public static void a(Throwable th2, String str) {
        if (com.apm.insight.e.g() == null) {
            return;
        }
        if (f7205b == -1) {
            f7205b = 5;
        }
        int i10 = f7206c;
        if (i10 < f7205b) {
            f7206c = i10 + 1;
            a().reportCustomErr(str, "INNER", th2);
        }
    }
}
