package com.mbridge.msdk.foundation.controller;

import android.annotation.SuppressLint;
import com.mbridge.msdk.foundation.controller.a;
/* compiled from: MBSDKContext.java */
/* loaded from: classes5.dex */
public class c extends a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: s  reason: collision with root package name */
    private static volatile c f26724s;

    private c() {
    }

    public static c m() {
        if (f26724s == null) {
            synchronized (c.class) {
                try {
                    if (f26724s == null) {
                        f26724s = new c();
                    }
                } finally {
                }
            }
        }
        return f26724s;
    }

    @Override // com.mbridge.msdk.foundation.controller.a
    protected void a(a.e eVar) {
    }
}
