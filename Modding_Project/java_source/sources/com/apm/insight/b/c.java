package com.apm.insight.b;

import android.os.SystemClock;
import com.apm.insight.runtime.m;
/* compiled from: ANRThread.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: b  reason: collision with root package name */
    private static long f6748b;

    /* renamed from: a  reason: collision with root package name */
    private final b f6749a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6750c = false;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f6751d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        Runnable runnable = new Runnable() { // from class: com.apm.insight.b.c.1
            @Override // java.lang.Runnable
            public final void run() {
                if (c.this.f6750c) {
                    return;
                }
                c.this.f6749a.d();
                long unused = c.f6748b = SystemClock.uptimeMillis();
                if (com.apm.insight.runtime.i.a().b()) {
                    m.a().a(c.this.f6751d, 500L);
                } else {
                    m.a().a(c.this.f6751d, 500L);
                }
                com.apm.insight.runtime.b.a(c.f6748b);
            }
        };
        this.f6751d = runnable;
        this.f6749a = bVar;
        m.a().a(runnable, 5000L);
    }

    public static boolean c() {
        return SystemClock.uptimeMillis() - f6748b <= 15000;
    }

    public final void b() {
        this.f6750c = true;
    }

    public final void a() {
        if (this.f6750c) {
            return;
        }
        m.a().a(this.f6751d, 5000L);
    }
}
