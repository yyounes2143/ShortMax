package com.bytedance.adsdk.ugeno.ba;

import java.util.Collection;
/* loaded from: classes3.dex */
public class ex {
    public static int oJ(boolean z10, int i10, int i11) {
        if (i11 != 0 && z10) {
            int i12 = i10 - 512;
            int abs = Math.abs(i12) % i11;
            return (i12 >= 0 || abs == 0) ? abs : i11 - abs;
        }
        return i10;
    }

    public static boolean oJ(int i10, Collection<?> collection) {
        return i10 >= 0 && i10 < collection.size();
    }
}
