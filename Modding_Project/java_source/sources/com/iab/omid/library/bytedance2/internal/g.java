package com.iab.omid.library.bytedance2.internal;

import android.annotation.SuppressLint;
import android.content.Context;
/* loaded from: classes5.dex */
public class g {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: b  reason: collision with root package name */
    private static g f22755b = new g();

    /* renamed from: a  reason: collision with root package name */
    private Context f22756a;

    private g() {
    }

    public static g b() {
        return f22755b;
    }

    public Context a() {
        return this.f22756a;
    }

    public void a(Context context) {
        this.f22756a = context != null ? context.getApplicationContext() : null;
    }
}
