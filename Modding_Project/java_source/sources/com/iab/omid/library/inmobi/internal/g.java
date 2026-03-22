package com.iab.omid.library.inmobi.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class g {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static g f22885b = new g();

    /* renamed from: a  reason: collision with root package name */
    private Context f22886a;

    private g() {
    }

    public static g b() {
        return f22885b;
    }

    public Context a() {
        return this.f22886a;
    }

    public void a(Context context) {
        this.f22886a = context != null ? context.getApplicationContext() : null;
    }
}
