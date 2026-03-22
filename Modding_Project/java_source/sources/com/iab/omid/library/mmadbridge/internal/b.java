package com.iab.omid.library.mmadbridge.internal;

import android.annotation.SuppressLint;
import android.view.View;
/* loaded from: classes5.dex */
public class b extends d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: d  reason: collision with root package name */
    private static b f23007d = new b();

    private b() {
    }

    public static b g() {
        return f23007d;
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d
    public void b(boolean z10) {
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.c().b()) {
            aVar.getAdSessionStatePublisher().a(z10);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d
    public boolean d() {
        for (com.iab.omid.library.mmadbridge.adsession.a aVar : c.c().a()) {
            View c10 = aVar.c();
            if (c10 != null && c10.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
