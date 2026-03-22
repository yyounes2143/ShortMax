package com.inmobi.media;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Xc extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Xc f24372a = new Xc();

    public Xc() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Zc.f24454a.getClass();
        C6 c62 = Zc.f24463j;
        int i10 = 0;
        if (c62 != null) {
            Intrinsics.checkNotNullParameter("cnt", "key");
            i10 = c62.f23530a.getInt("cnt", 0);
        }
        return Integer.valueOf(i10);
    }
}
