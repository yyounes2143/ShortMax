package com.inmobi.media;

import java.util.BitSet;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class E4 {

    /* renamed from: a  reason: collision with root package name */
    public final C2863a2 f23616a;

    public E4(String b64feature) {
        Intrinsics.checkNotNullParameter(b64feature, "b64feature");
        C2863a2 c2863a2 = new C2863a2();
        this.f23616a = c2863a2;
        c2863a2.a(b64feature);
    }

    public final boolean a(boolean z10) {
        BitSet bitSet = this.f23616a.f24472a;
        if (bitSet != null) {
            return bitSet.get(0);
        }
        return z10;
    }
}
