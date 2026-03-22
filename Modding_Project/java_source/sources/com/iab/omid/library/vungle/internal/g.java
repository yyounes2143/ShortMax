package com.iab.omid.library.vungle.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class g {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static g f23283b = new g();

    /* renamed from: a  reason: collision with root package name */
    private Context f23284a;

    private g() {
    }

    public static g b() {
        return f23283b;
    }

    public Context a() {
        return this.f23284a;
    }

    public void a(Context context) {
        this.f23284a = context != null ? context.getApplicationContext() : null;
    }
}
