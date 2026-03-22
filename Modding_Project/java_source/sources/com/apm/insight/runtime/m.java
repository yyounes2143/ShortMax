package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
/* compiled from: NpthHandlerThread.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static volatile p f7220a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Handler f7221b;

    public static p a() {
        if (f7220a == null) {
            b();
        }
        return f7220a;
    }

    private static HandlerThread b() {
        if (f7220a == null) {
            synchronized (m.class) {
                try {
                    if (f7220a == null) {
                        p pVar = new p("default_npth_thread");
                        f7220a = pVar;
                        pVar.b();
                    }
                } finally {
                }
            }
        }
        return f7220a.c();
    }
}
