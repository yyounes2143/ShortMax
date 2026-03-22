package com.apm.insight.runtime;

import android.os.SystemClock;
import android.util.Printer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: LooperMessageManager.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f7199a;

    /* renamed from: b  reason: collision with root package name */
    private long f7200b = -1;

    /* renamed from: c  reason: collision with root package name */
    private final List<Printer> f7201c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final List<Printer> f7202d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private boolean f7203e = false;

    static {
        new Printer() { // from class: com.apm.insight.runtime.i.1
            @Override // android.util.Printer
            public final void println(String str) {
                if (str == null) {
                    return;
                }
                if (str.charAt(0) == '>') {
                    i.a().a(str);
                } else if (str.charAt(0) == '<') {
                    i.a().b(str);
                }
                i.c();
            }
        };
    }

    private i() {
    }

    public static i a() {
        if (f7199a == null) {
            synchronized (i.class) {
                try {
                    if (f7199a == null) {
                        f7199a = new i();
                    }
                } finally {
                }
            }
        }
        return f7199a;
    }

    static /* synthetic */ Printer c() {
        return null;
    }

    public final boolean b() {
        return this.f7200b != -1 && SystemClock.uptimeMillis() - this.f7200b > 5000;
    }

    final void b(String str) {
        this.f7200b = SystemClock.uptimeMillis();
        try {
            a(this.f7202d, str);
        } catch (Exception e10) {
            com.apm.insight.a.b((Throwable) e10);
        }
    }

    final void a(String str) {
        this.f7200b = -1L;
        try {
            a(this.f7201c, str);
        } catch (Exception e10) {
            com.apm.insight.a.a((Throwable) e10);
        }
    }

    private static void a(List<? extends Printer> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Printer printer = list.get(i10);
                if (printer == null) {
                    return;
                }
                printer.println(str);
            }
        } catch (Throwable th2) {
            com.apm.insight.a.a(th2);
        }
    }
}
