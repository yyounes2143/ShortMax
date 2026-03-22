package com.iab.omid.library.bytedance2.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: d  reason: collision with root package name */
    private static b f22742d = new b();

    private b() {
    }

    public static b g() {
        return f22742d;
    }

    @Override // com.iab.omid.library.bytedance2.internal.d
    public void b(boolean z10) {
        for (com.iab.omid.library.bytedance2.adsession.a aVar : c.c().b()) {
            aVar.getAdSessionStatePublisher().a(z10);
        }
    }

    @Override // com.iab.omid.library.bytedance2.internal.d
    public boolean d() {
        for (com.iab.omid.library.bytedance2.adsession.a aVar : c.c().a()) {
            View c10 = aVar.c();
            if (c10 != null && c10.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
