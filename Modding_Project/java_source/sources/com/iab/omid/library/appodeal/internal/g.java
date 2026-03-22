package com.iab.omid.library.appodeal.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class g {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static g f22620b = new g();

    /* renamed from: a  reason: collision with root package name */
    private Context f22621a;

    private g() {
    }

    public static g b() {
        return f22620b;
    }

    public Context a() {
        return this.f22621a;
    }

    public void a(Context context) {
        this.f22621a = context != null ? context.getApplicationContext() : null;
    }
}
