package com.google.common.primitives;

import com.inmobi.commons.core.configs.AdConfig;
import h7.k;
/* compiled from: UnsignedBytes.java */
/* loaded from: classes5.dex */
public final class g {
    public static byte a(long j10) {
        boolean z10;
        if ((j10 >> 8) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        k.g(z10, "out of range: %s", j10);
        return (byte) j10;
    }

    public static int b(byte b10) {
        return b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
    }
}
