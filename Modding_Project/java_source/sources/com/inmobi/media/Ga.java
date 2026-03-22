package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class Ga {
    public static final boolean a(Da da2) {
        String str;
        Intrinsics.checkNotNullParameter(da2, "<this>");
        int i10 = da2.f23594b;
        if ((400 > i10 || i10 >= 600) && i10 > 0 && ((str = da2.f23595c) == null || str.length() == 0)) {
            return true;
        }
        return false;
    }
}
