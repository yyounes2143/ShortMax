package com.iab.omid.library.vungle.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: d  reason: collision with root package name */
    private static b f23270d = new b();

    private b() {
    }

    public static b g() {
        return f23270d;
    }

    @Override // com.iab.omid.library.vungle.internal.d
    public void b(boolean z10) {
        for (com.iab.omid.library.vungle.adsession.a aVar : c.c().b()) {
            aVar.d().a(z10);
        }
    }

    @Override // com.iab.omid.library.vungle.internal.d
    public boolean d() {
        for (com.iab.omid.library.vungle.adsession.a aVar : c.c().a()) {
            View e10 = aVar.e();
            if (e10 != null && e10.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
