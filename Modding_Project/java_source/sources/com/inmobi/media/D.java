package com.inmobi.media;

import java.util.Comparator;
/* loaded from: classes5.dex */
public final class D implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        B4 b42 = (B4) obj2;
        B4 b43 = (B4) obj;
        return ps.a.a(Integer.valueOf(b42.f23509c * b42.f23510d), Integer.valueOf(b43.f23509c * b43.f23510d));
    }
}
