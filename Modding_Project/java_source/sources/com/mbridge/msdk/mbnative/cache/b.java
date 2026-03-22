package com.mbridge.msdk.mbnative.cache;

import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: AbsNativeCache.java */
/* loaded from: classes2.dex */
public abstract class b<K, V> {
    public long a() {
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = h.b().a();
        }
        return d10.Z() * 1000;
    }

    public abstract V a(K k10, int i10);

    public abstract void a(K k10, V v10);

    public abstract void a(K k10, V v10, String str);

    public abstract void a(String str, Campaign campaign, String str2);

    public V b(K k10, int i10) {
        return null;
    }

    public long b() {
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = h.b().a();
        }
        return d10.a0() * 1000;
    }
}
