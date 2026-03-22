package com.iab.omid.library.mmadbridge.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class g {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static g f23020b = new g();

    /* renamed from: a  reason: collision with root package name */
    private Context f23021a;

    private g() {
    }

    public static g b() {
        return f23020b;
    }

    public Context a() {
        return this.f23021a;
    }

    public void a(Context context) {
        this.f23021a = context != null ? context.getApplicationContext() : null;
    }
}
