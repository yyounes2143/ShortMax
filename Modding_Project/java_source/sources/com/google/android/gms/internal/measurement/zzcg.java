package com.google.android.gms.internal.measurement;

import android.os.Build;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzcg {
    public static final int zza;

    static {
        int i10;
        if (Build.VERSION.SDK_INT >= 31) {
            i10 = 33554432;
        } else {
            i10 = 0;
        }
        zza = i10;
    }
}
