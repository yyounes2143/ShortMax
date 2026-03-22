package com.iab.omid.library.applovin.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class g {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static g f22484b = new g();

    /* renamed from: a  reason: collision with root package name */
    private Context f22485a;

    private g() {
    }

    public static g b() {
        return f22484b;
    }

    public Context a() {
        return this.f22485a;
    }

    public void a(Context context) {
        this.f22485a = context != null ? context.getApplicationContext() : null;
    }
}
