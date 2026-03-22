package com.apm.insight.b;

import android.content.Context;
import androidx.annotation.NonNull;
/* compiled from: CrashANRHandler.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private static volatile f f6763a;

    /* renamed from: c  reason: collision with root package name */
    private static g f6764c;

    /* renamed from: b  reason: collision with root package name */
    private final b f6765b;

    private f(@NonNull Context context) {
        this.f6765b = new b(context);
        g gVar = new g();
        f6764c = gVar;
        gVar.a();
    }

    public static f a(Context context) {
        if (f6763a == null) {
            synchronized (f.class) {
                try {
                    if (f6763a == null) {
                        f6763a = new f(context);
                    }
                } finally {
                }
            }
        }
        return f6763a;
    }

    public static g b() {
        return f6764c;
    }

    public final void c() {
        this.f6765b.a();
    }

    public final void d() {
        this.f6765b.b();
    }

    public final b a() {
        return this.f6765b;
    }
}
