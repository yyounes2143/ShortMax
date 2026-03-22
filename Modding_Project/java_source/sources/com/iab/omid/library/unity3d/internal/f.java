package com.iab.omid.library.unity3d.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class f {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static f f23154b = new f();

    /* renamed from: a  reason: collision with root package name */
    private Context f23155a;

    private f() {
    }

    public static f b() {
        return f23154b;
    }

    public Context a() {
        return this.f23155a;
    }

    public void a(Context context) {
        this.f23155a = context != null ? context.getApplicationContext() : null;
    }
}
