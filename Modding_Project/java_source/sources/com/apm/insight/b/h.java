package com.apm.insight.b;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Printer;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: LooperMonitor.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f6816a;

    /* renamed from: b  reason: collision with root package name */
    private static Printer f6817b;

    /* renamed from: c  reason: collision with root package name */
    private static final CopyOnWriteArrayList<e> f6818c = new CopyOnWriteArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private static volatile boolean f6819d = false;

    /* compiled from: LooperMonitor.java */
    /* loaded from: classes2.dex */
    public interface a {
        @Nullable
        String a();

        String b();

        String c();
    }

    public static void a() {
        if (f6816a) {
            return;
        }
        f6816a = true;
        f6817b = new Printer() { // from class: com.apm.insight.b.h.1
            @Override // android.util.Printer
            public final void println(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (str.charAt(0) == '>') {
                    h.a(true, str);
                } else if (str.charAt(0) == '<') {
                    h.a(false, str);
                }
            }
        };
        i.a();
        i.a(f6817b);
    }

    public static void a(e eVar) {
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f6818c;
        synchronized (copyOnWriteArrayList) {
            copyOnWriteArrayList.add(eVar);
        }
    }

    public static void a(boolean z10, String str) {
        e.f6760a = System.nanoTime() / 1000000;
        e.f6761b = SystemClock.currentThreadTimeMillis();
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f6818c;
        for (int i10 = 0; i10 < copyOnWriteArrayList.size(); i10++) {
            e eVar = copyOnWriteArrayList.get(i10);
            if (eVar == null || !eVar.a()) {
                if (!z10 && eVar.f6762c) {
                    eVar.b("");
                }
            } else if (z10) {
                if (!eVar.f6762c) {
                    eVar.a(str);
                }
            } else if (eVar.f6762c) {
                eVar.b(str);
            }
        }
    }
}
